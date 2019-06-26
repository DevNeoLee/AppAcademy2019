import React from 'react';
import { Component } from 'react'
import Home from './Home'
import Topics from './Topics'
import About from './About'
import { 
  BrowserRouter,
  Route,
  Link,
} from 'react-router-dom'


function App() {
  return (
    <BrowserRouter>
      <div>
        <ul>
          <li><Link to='/'>Home</Link></li>
          <li><Link to='/about'>About</Link></li>
          <li><Link to='/topics'>Topics</Link></li>
        </ul>
        <hr />

        <Route exact path='/' component= {Home} />
        <Route path='/about' component={About} />
        <Route path='/topics' component={Topics} />

      </div>
      </BrowserRouter>
   
  );
}

export default App;
