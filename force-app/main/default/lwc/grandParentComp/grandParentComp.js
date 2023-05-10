import { LightningElement } from 'lwc';

export default class GrandParentComp extends LightningElement {
    message;
    showHandler(event){
        console.log("Received show evnt at grand parent component");
        console.log(event.target.nodeName);
        console.log(event.currentTarget.nodeName);
        this.message = event.details;
    }
}