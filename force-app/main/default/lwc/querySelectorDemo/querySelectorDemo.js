import { LightningElement } from 'lwc';

export default class QuerySelectorDemo extends LightningElement {
    fruits = ["Banana", "Apple", "Mango", "Cherries"]
    clickHandler(){
        //h1 -querySelector demo
        const h1elem = this.template.querySelector("h1");
        console.log(h1elem.innerText);
        h1elem.style.color = "#03cafc";
        h1elem.style.backgroundColor="purple";
        h1elem.style.border = "2px solid black";

        //p-query Selector demo
        const pelem=this.template.querySelector("p");
        console.log(pelem.innerText);
        pelem.style.color = "yellow";
        pelem.style.backgroundColor="purple";
        pelem.style.border = "2px solid black";

        //querySelectorAll demo
        const divElems = this.template.querySelectorAll(".child");
        divElems.forEach(item =>{
            console.log(item.innerText);
            item.style.color = "blue";
            item.setAttribute("class", "slds-align_absolute-center");
        })
        const buttonElem = this.template.querySelector("lightning-button");
        buttonElem.label = "Do not Again";
        buttonElem.variant="destructive";
    }
}