import './WelcomeStyle.css'
// import DolgonaCoffee from '../../../public/assets/images/dolgona-coffee.jpg';
import { TailwindIndicator } from '@/Components/TailwindIndicator';
import { Badge, Button, Card, Group, Image, Text } from '@mantine/core';

export default function Welcome({ auth }) {
    return (
        <>
            <div className='overflow-hidden bg-orange-100 flex flex-col justify-between'>
                <div className="p-0 h-auto text-center text-white bg-custom bg-center bg-cover bg-no-repeat">
                    <div className='flex flex-wrap justify-between bg-amber-950/50 p-6'>
                        <Button onClick={route('dashboard')} className='text-white text-xl font-bold' type="link">
                            Coffee Shop
                        </Button>
                        <Button className='text-white hover:text-gray-400' type="link">Home</Button>
                        <Button className='text-white' type="link">About</Button>
                        <Button className='text-white' type="link">Offers</Button>
                        {/* {auth.user ? (
                            <Button className='text-white text-xl flex items-center' type="link">
                                <UserOutlined />
                            </Button>
                        ) : (
                            <Button className='text-white' type="link">Login</Button>
                        )} */}
                    </div>

                    <div class="leading-7 flex flex-col pl-10 py-14">
                        <span class="text-xl md:text-2xl font-semibold">Welcome!</span>
                        <p class="text-2xl md:text-3xl  font-bold">Find your favorite coffee!</p>
                    </div>
                </div>
 
                <div className='min-h-60'>
                    <div className='flex flex-row flex-wrap content-center justify-center items-center gap-6 p-5'>
                        {Array.from({ length: 3 }).map((_, index) => (
                            <Card shadow="sm" padding="lg" radius="md" withBorder>
                                <Card.Section>
                                    <Image
                                    src="https://raw.githubusercontent.com/mantinedev/mantine/master/.demo/images/bg-8.png"
                                    height={160}
                                    alt="Norway"
                                    />
                                </Card.Section>

                                <Group justify="space-between" mt="md" mb="xs">
                                    <Text fw={500}>Norway Fjord Adventures</Text>
                                    <Badge color="pink">On Sale</Badge>
                                </Group>

                                <Text size="sm" c="dimmed">
                                    With Fjord Tours you can explore more of the magical fjord landscapes with tours and
                                    activities on and around the fjords of Norway
                                </Text>

                                <Button color="blue" fullWidth mt="md" radius="md">
                                    Book classic tour now
                                </Button>
                            </Card>
                        ))}
                    </div>

                    <div className="bg-white w-full text-center text-2xl text-amber-950 font-bold p-10">
                        <h2>Explore Our Special Offers!</h2>
                    </div>
                </div>

                <div className='text-center text-white bg-amber-950 flex flex-row justify-between'>
                    <h3 className='text-white text-xl font-bold'>
                        Coffee Shop
                    </h3>

                    <ul className='flex flex-col justify-between'>
                        <h3>PRIVACY</h3>
                        <li>
                            Terms of use
                        </li>
                        <li>
                            Privacy Policy
                        </li>

                        <h3>SERVICES</h3>
                        <li>
                            Shop
                        </li>
                        <li>
                            Order ahead
                        </li>
                    </ul>

                    <ul className='flex flex-col justify-between'>
                        <h3>PRIVACY</h3>
                        <li>
                            Terms of use
                        </li>
                        <li>
                            Privacy Policy
                        </li>

                        <h3>SERVICES</h3>
                        <li>
                            Shop
                        </li>
                        <li>
                            Order ahead
                        </li>
                    </ul>

                    <ul className='flex flex-col justify-between'>
                        <h3>PRIVACY</h3>
                        <li>
                            Terms of use
                        </li>
                        <li>
                            Privacy Policy
                        </li>

                        <h3>SERVICES</h3>
                        <li>
                            Shop
                        </li>
                        <li>
                            Order ahead
                        </li>
                    </ul>

                    <ul className='flex flex-col justify-between'>
                        <h3>PRIVACY</h3>
                        <li>
                            Terms of use
                        </li>
                        <li>
                            Privacy Policy
                        </li>

                        <h3>SERVICES</h3>
                        <li>
                            Shop
                        </li>
                        <li>
                            Order ahead
                        </li>
                    </ul>
                </div>

                <TailwindIndicator/>
            </div>
        </>
    );
}
