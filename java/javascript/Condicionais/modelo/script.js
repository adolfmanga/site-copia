function carregar() {
    var msg  =   document.getElementById('msg')
    var img  =   document.getElementById('imagem')
    var data =  new Date()
    var hora =  data.getHours()
    msg.innerHTML = `Agora são ${hora} horas.`
    if (hora >= 0 && hora < 12) {
      img.src ="amahancer.png"
      document.body.style.background = '#0000FF'
    }
     else if (hora >= 12 && hora <= 18) {
        img.src = 'atardecer.png'
        document.body.style.background = '#FF0000'
    } 
    else {
        img.src = 'anoitecer.png'
        document.body.style.background = '#4B0082'
    }
}