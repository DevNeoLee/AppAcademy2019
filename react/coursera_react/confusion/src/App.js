import React from 'react';
import { Navbar, NavbarBrand} from 'reactstrap';
import Menu from './components/MenuComponents';

function App() {
  return (
      <div>
      <Navbar dark color="primary">
        <div className="container">
          <NavbarBrand href="/">Restorate Con FusionS</NavbarBrand>
        </div>
      </Navbar>
      <Menu />
      </div>
  );
}

export default App;
