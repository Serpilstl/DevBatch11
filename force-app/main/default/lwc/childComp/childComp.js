import { LightningElement } from 'lwc';

export default class ChildComp extends LightningElement {
    clickHandler(){
        //create event and dispatch the same
        console.log("Before creating the evnt");

        const showEvent = new CustomEvent("show", {detail :"Greeting from garndchild",bubbles : true,composed : true});
        this.dispatchEvent(showEvent);

        console.log("Created and dispatched the event");
    }
}