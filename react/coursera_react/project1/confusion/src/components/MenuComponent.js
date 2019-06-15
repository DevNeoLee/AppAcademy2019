import React, { Component } from 'react';
import { Media, Alert, Badge, Breadcrumb, BreadcrumbItem, 
        ButtonDropdown, DropdownToggle, DropdownMenu, DropdownItem, Button, ButtonGroup, 
        Card, CardBody, CardFooter, CardHeader, CardImg, CardSubtitle, CardText, CardTitle, 
        Carousel } from 'reactstrap';

class Menu extends Component {
    constructor(props) {
        super(props);

        this.state = {
            dishes: [
            {
                id: 0,
                name:'forrest waterfall bridge ',
                image: 'assets/images/image2.jpg',
                category: 'deep forrest bridg',
                label:'Hot',
                age:'250',
                description:'A unique combination of Indian Uthappam (pancake) and Italian pizza, topped with Cerignola olives, ripe vine cherry tomatoes, Vidalia onion, Guntur chillies and Buffalo Paneer.'                        },
             {
                id: 1,
                name:'the oldest tree',
                image: 'assets/images/image1.jpg',
                category: 'endangered plant',
                label:'',
                price:'1.99',
                description:'Deep fried Zucchini coated with mildly spiced Chickpea flour batter accompanied with a sweet-tangy tamarind sauce'                        },
             {
                id: 2,
                name:'tallest tree forrest',
                image: 'assets/images/image3.jpg',
                category: 'straight up',
                label:'New',
                price:'1.99',
                description:'A quintessential ConFusion experience, is it a vada or is it a donut?'                        },
             {
                id: 3,
                name:'most beatufiful tree',
                image: 'assets/images/image4.jpg',
                category: 'africa',
                label:'',
                price:'2.99',
                description:'A delectable, semi-sweet New York Style Cheese Cake, with Graham cracker crust and spiced with Indian cardamoms'                        }
            ]
        }
    }

    render(){

        const menu = this.state.dishes.map((dish) => {
            return (
                <div key={dish.id} className="col-12 mt-5">
                    <Alert color="warning">Warning! There was a report that hurricane might be expected this fall {dish.category}. Please be cautious!! </Alert>
                    <h1><Badge color="primary">great day!</Badge></h1>
                    <Breadcrumb>
                        <BreadcrumbItem active>today</BreadcrumbItem>
                        <BreadcrumbItem>tomorrow</BreadcrumbItem>
                        <BreadcrumbItem active>day after tomorrow</BreadcrumbItem>
                    </Breadcrumb>

                    <ButtonDropdown> 
                        <DropdownToggle>on/off </DropdownToggle>
                        <DropdownMenu>    
                            <DropdownItem header>Header</DropdownItem>
                            <DropdownItem disabled>Action</DropdownItem>
                            <DropdownItem>...</DropdownItem>

                        </DropdownMenu>    
                    </ButtonDropdown>

                    <ButtonGroup>
                        <Button color="link">1</Button>
                        <Button color="link">2</Button>
                        <Button color="link">3</Button>
                    </ButtonGroup>

                    <Card>
                        <CardHeader>
                            <CardImg top width="100%" src="https://printclublondon.com/wp-content/uploads/2018/12/Jungle-Book-Aqua-Green.jpg" alt="Card image cap" />
                        </CardHeader>
                        <CardBody>
                            <CardTitle>Card title</CardTitle>
                        <   CardSubtitle>Card subtitle</CardSubtitle>
                        </CardBody>
                        <CardFooter>
                            <CardText>Some quick example text to build on the card title and make up the bulk of the card's content.</CardText>
                            <Button>Button</Button>
                        </CardFooter>
                       
                    </Card>



                    <Media tag="li">
                        <Media left middle>
                            <Media object src={dish.image} alt={dish.name} ></Media>
                        </Media>
                        <Media body className="ml-5">
                            <Media heading>{dish.name}</Media>
                            <p>{dish.description}</p>
                        </Media> 
                    </Media> 
                </div>
            );
        });

        return(
            <div className="container">
                <div className="row">
                    <Media list>
                        {menu}
                    </Media>
                </div>

            </div>
        );
    }
}

export default Menu;