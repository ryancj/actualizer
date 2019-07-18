import { Controller } from "stimulus"

export default class extends Controller {
    static targets = ["name"]

    update(event) {
        var array = this.nameTargets
        console.log(array)

        array.forEach(function(element) {
            if (element.value.length >= 1 ) {
                 var x = element.id
                 var y = x.split('-input')[0]
                 var rr = element.value.replace(/\n/g, "<br>")
                 document.getElementById(y).innerHTML = rr
            } 
            
        })
     }

     loadContent(e) {
         
     }














}