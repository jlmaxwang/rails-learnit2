import { Controller } from 'stimulus';
export default class extends Controller {
  static targets = ["query", "lessons"]
  submit() {
     const value = this.queryTarget.value
     fetch(`/?query=${value}`, {
       headers: { accept: 'application/json'}
     }).then((response) => response.text())
     .then(data => console.log(data))
   }
 }
