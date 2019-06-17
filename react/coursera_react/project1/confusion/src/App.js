import React from 'react';
import { Navbar, NavbarBrand } from 'reactstrap';
import './App.css';
import Menu from './components/MenuComponent';

function App() {
  return ( 
    <div> 
      <Navbar dark color="primary">
        <NavbarBrand href="/'">Save Our Forrest Campaign</NavbarBrand>
      </Navbar>  

      <Menu/>
      
    </div>
  );
}

export default App;
