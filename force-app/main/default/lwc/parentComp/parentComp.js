import { LightningElement } from 'lwc';

export default class ParentComp extends LightningElement {
    showHandler1(event){
        console.log("Recieved show evnt at parent comp");
        console.log(event.target.nodeName);
        console.log(event.currentTarget.nodeName);
    }
    showHandler2(event){
        console.log("Recieved show evnt at parent comp div tag!");
        console.log(event.target.nodeName);
        console.log(event.currentTarget.nodeName);
    }
}