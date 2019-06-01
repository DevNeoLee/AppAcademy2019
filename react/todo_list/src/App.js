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
        title: 'clean up things(physicaly, internaly..)',
        completed: false
      },
      {
        id: 2,
        title: 'start everything always you wanted to start a little bit each',
        completed: false
      },
      {
        id: 3,
        title: 'be happy truly',
        completed: false
      }
    ],

    wanted: [
      {
        id: 1,
        title: 'useKoreanName',
        code: 'gwanghyuk lee'
      },
      {
        id: 2,
        title: 'useNewAccounts',
        code: 'online and offline'
      }, {
        id: 3,
        title: 'nice',
        code: 'nice'
      },
    ]
  }

  render() {
  
  return (
    <div className="App">
    
     
      <br/>
      <br/>
      <hr></hr>
      <h1>Todo list of gwanghyuk lee</h1>


      <br />
      <br />
      <Todos abc={this.state.variable} da={this.state.wanted} />
      <hr></hr>
      <Todos1 abc={this.state.variable} da={this.state.wanted}/>
      <br />
      <br />
      <hr></hr>
      <Todos2 abc={this.state.variable} da={this.state.wanted}/>
      <br />
      <br />
      <hr></hr>
      {/* <Random kko={this.state.variable[0]}/>
      <Olaola jjj={this.state.variable}/> */}
    
    
      
    </div>
  );
  }
}

export default App;
