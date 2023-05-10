import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    fullName = 'Serpil';
    age = 25;
    location = {
        city : "St Louis",
        country : "USA"

    };
    sum(a,b){
        return a +b;

    }
}