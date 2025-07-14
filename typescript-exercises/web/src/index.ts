// import { User } from "./models/User";

// const user = new User({name: "Carolina", age: 20})

// user.set({name: 'Teste', age: 11})
// console.log(user.get('name'))

// user.on('change', () => {
//     console.log('Change 1')
// })

// user.on('save', () => {
//     console.log('Save was triggered')
// })

// user.trigger('change')

// import axios from "axios";

// axios.post('http://localhost:3000/users', {
//     name: 'myname',
//     age: 20
// })

// npx json-server --watch db.json --port 3000

import { User } from "./models/User";

const user = new User({name: 'new record', age: 0})

user.events.on('change', () => {
    console.log('change')
})

user.events.trigger('change')
