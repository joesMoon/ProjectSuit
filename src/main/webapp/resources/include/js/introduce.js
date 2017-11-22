(() => {
  const DEMO = window.document.getElementById('😍')

  const RESIZER = window.document.querySelector('.resizer')
  const ROOT = window.document.documentElement
  const THRESHHOLD = parseFloat(RESIZER.attributes['threshhold'].value)
  const MAX = parseFloat(RESIZER.attributes['max'].value)
  const SEED = parseFloat(RESIZER.attributes['seed'].value)

  let windX = window.document.body.clientWidth
  let lastX = SEED
  
  function setWidth(width) {
    ROOT.style.setProperty('--width', `${width}vw`)
    DEMO.innerHTML = `--width: <span>${width}vw</span>;`
  }
  
  function resizeElement(event) {
    if (event.buttons === null ? event.which !== 0 : event.buttons !== 0) {
      if(Math.abs(event.pageX - lastX) >= THRESHHOLD) {
        ROOT.classList.add('is-resizing')
        lastX = parseFloat(((event.pageX/windX)*100).toFixed(3))
        lastX = lastX >= MAX ? MAX : lastX
        setWidth(lastX)
      }
    } else {
      ROOT.classList.remove('is-resizing')
      window.removeEventListener('mousemove', resizeElement);
    }
  }

  RESIZER.addEventListener('mousedown', (event) => {
    if (event.which === 1) {
      lastX = parseFloat(((event.pageX/windX)*100).toFixed(3))
      window.addEventListener('mousemove', resizeElement)
      event.preventDefault()
    }
  })

  RESIZER.addEventListener('dblclick', (event) => {
    if(Math.floor(lastX) !== Math.floor(SEED)) {
      setWidth(SEED)
    } else {
      setWidth(0)
    }
  })
  
  window.addEventListener('resize', () => windX = window.document.body.clientWidth);
  
  setWidth(SEED)
})()