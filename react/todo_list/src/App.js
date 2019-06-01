import React, { Component } from 'react';
import './App.css';
import Todos from './components/Todos';
import Random from './components/random';

class App extends Component {
  state = {
    todos: [
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
        title: 'no talking and just breathe',
        code: 'right'
      },
    ]
  }

  render() {
  
  return (
    <div className="App">
    
      <br />
      <br />
      <h1>Todo list of gwanghyuk lee</h1>
      <br />
      <br />
      <hr></hr>
      <br />
      <h2>todos</h2>
      <Todos todos={this.state.todos} da={this.state.wanted} />
      <hr></hr>
      <br />
      <h2>wanted to start</h2>
      <Random kko={this.state.wanted}/>
 
    

      
    </div>
  );
  }
}

export default App;
