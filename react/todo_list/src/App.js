import React, { Component } from 'react';
import './App.css';
import Todos from './components/Todos';
import Todos1 from './components/Todos1';
import Todos2 from './components/Todos2';
import Random from './random';
import Olaola from './components/olaola';

class App extends Component {
  state = {
    variable: [
      {
        id:1,
        title: 'hello there',
        completed: false
      },
      {
        id: 2,
        title: 'hello there2',
        completed: false
      },
      {
        id: 3,
        title: 'hello there3',
        completed: false
      }
    ]
  }
  render() {
  
  return (
    <div className="App">
    
      <Todos abc={this.state.variable} />
      <br/>
      <br/>
      <hr></hr>
      <h1>App.js</h1>
      <br />
      <br />
      <hr></hr>
      <Todos1 abc={this.state.variable}/>
      <br />
      <br />
      <hr></hr>
      <Todos2 abc={this.state.variable}/>
      <br />
      <br />
      <hr></hr>
      <Random kko={this.state.variable[0]}/>
      <Olaola jjj={this.state.variable}/>
    
    
      
    </div>
  );
  }
}

export default App;
