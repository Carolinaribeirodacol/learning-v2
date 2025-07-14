import "./WelcomeStyle.css";
import DolgonaCoffee from '../../../public/assets/images/dolgona-coffee.jpg';
import { TailwindIndicator } from "@/Components/TailwindIndicator";
import {
    AspectRatio,
    Badge,
    Button,
    Card,
    Container,
    Grid,
    Group,
    Image,
    Overlay,
    Text,
    Title,
} from "@mantine/core";
import TextField from "@/Components/TextField";
import Rating from "@/Components/Rating";
import { Comment } from "@/Components/Comment";
import Feature, { FeaturesAsymmetrical } from "@/Components/Feature";

export default function Welcome({ auth }) {
    return (
        <>
            <header className="pt-4 bg-custom bg-center bg-cover bg-no-repeat h-auto">
                <Container className="h-10 flex justify-between items-start">
                    <Button
                        onClick={() => route("dashboard")}
                        variant="transparent"
                        color="#FFF"
                    >
                        Coffee Shop
                    </Button>
                    <Button
                        onClick={() => route("dashboard")}
                        variant="subtle"
                        color="#FFF"
                    >
                        Home
                    </Button>
                    <Button
                        onClick={() => route("dashboard")}
                        variant="subtle"
                        color="#FFF"
                    >
                        About
                    </Button>
                    <Button
                        onClick={() => route("dashboard")}
                        variant="subtle"
                        color="#FFF"
                    >
                        Offers
                    </Button>
                    {auth.user ? (
                        <Button
                            onClick={() => route("dashboard")}
                            variant="subtle"
                            color="#FFF"
                        >
                            <UserOutlined />
                        </Button>
                    ) : (
                        <Button
                            onClick={() => route("dashboard")}
                            variant="subtle"
                            color="#FFF"
                        >
                            Login
                        </Button>
                    )}
                </Container>

                <Container className="h-32 flex flex-col items-start content-center justify-center">
                    <Title className="text-white" order={5}>
                        Seja Bem-vindo(a)!
                    </Title>
                    <Title className="text-white" order={3}>
                        Um café que você vai se lembrar para sempre!
                    </Title>
                </Container>
            </header>

            <Container fluid p={10} bg="#f1f0ee">
                <Grid
                    justify="flex-start"
                    align="center"
                    gutter="md"
                >
                    {Array.from({ length: 4 }).map((_, index) => (
                        <Grid.Col key={index} span={{ base: 6, md: 3, lg: 3 }}>
                            <Card shadow="sm" padding="lg" radius="md" withBorder>
                                <Card.Section>
                                    <Image
                                        src={DolgonaCoffee}
                                        height={160}
                                        alt="Norway"
                                    />
                                </Card.Section>

                                <Group justify="space-between" mt="md" mb="xs">
                                    <Text fw={500}>Frappuccino</Text>
                                    <Badge color="pink">Em promoção</Badge>
                                </Group>

                                <Text size="sm" c="dimmed">
                                    É composto de café ou outro ingrediente básico,
                                    misturado com gelo e vários outros ingredientes,
                                    coberto com chantilly.
                                </Text>

                                <Button color="green" fullWidth mt="md" radius="md">
                                    Adicionar ao carrinho
                                </Button>
                            </Card>
                        </Grid.Col>
                    ))}
                </Grid>
            </Container>

            <div
                className="
                    bg-[#f1f0ee] w-full sm:h-auto md:h-72 
                    flex flex-col items-center justify-center 
                    text-2xl text-[#30261c] font-bold
                    px-4 md:px-6 py-6 text-center gap-2
                "
            >
              <FeaturesAsymmetrical />
            </div>

            <div
                className="
                    bg-custom-rating bg-center bg-cover bg-no-repeat 
                    w-full relative
                    text-2xl text-[#30261c] font-bold p-4 md:p-10
                "
            >
                <Overlay color="#30261c" zIndex={1} blur={3}/>
                
                <div className="relative z-[1]">
                    <Text
                        className="pb-2"
                        color="white"
                        size="xl"
                        ta="center"
                        fw={700}
                    >
                        O que nossos clientes acham?
                    </Text>

                    <Grid justify="flex-start" align="stretch">
                        <Grid.Col span={{ base: 12, md: 4, lg: 4 }}>
                            <Card
                                className="backdrop-blur-sm bg-white/30 text-white h-full"
                                shadow="sm"
                                p="md"
                                radius="md"
                            >
                                <Card.Section p="sm">
                                    <Comment
                                        userName="Carolina Ribeiro Da Col"
                                        content="Variedade incrível de cafés de alta qualidade!"
                                        ratingValue={5}
                                        ratingReadOnly={true}
                                    />
                                </Card.Section>
                            </Card>
                        </Grid.Col>

                        <Grid.Col span={{ base: 12, md: 4, lg: 4 }}>
                            <Card
                                className="backdrop-blur-sm bg-white/30 text-white h-full"
                                shadow="sm"
                                p="md"
                                radius="md"
                            >
                                <Card.Section p="sm">
                                    <Comment
                                        userName="Lucas de Andrade"
                                        content="Minha cafeteria favorita..."
                                        ratingValue={4.5}
                                        ratingReadOnly={true}
                                    />
                                </Card.Section>
                            </Card>
                        </Grid.Col>

                        <Grid.Col span={{ base: 12, md: 4, lg: 4 }}>
                            <Card
                                className="backdrop-blur-sm bg-white/30 text-white h-full"
                                shadow="sm"
                                p="md"
                                radius="md"
                            >
                                <Card.Section p="sm">
                                    <Comment
                                        userName="Maria Costa"
                                        content="Variedade incrível de cafés de alta qualidade!"
                                        ratingValue={5}
                                        ratingReadOnly={true}
                                    />
                                </Card.Section>
                            </Card>
                        </Grid.Col>
                    </Grid>
                </div>
            </div>

            <div
                className="
                    bg-[#f1f0ee] w-full sm:h-auto md:h-72 
                    flex flex-col items-center justify-center 
                    text-2xl text-[#30261c] font-bold
                    px-4 md:px-6 py-6 text-center gap-2
                "
            >
                <Title className="text-[#30261c]" order={3}>
                    Uma história com sabor: A origem da sua nova cafeteria
                    favorita!
                </Title>

                <Text size="md">
                    Em meio à agitação da cidade, um aroma irresistível paira no
                    ar. É o chamado da CoffeeShop, um refúgio acolhedor onde o
                    café se transforma em arte e a cada xícara se revela uma
                    história. Nossa jornada começou com um simples sonho:
                    compartilhar a paixão pelo café de qualidade com o mundo.
                    Acreditamos que essa bebida vai além de um simples
                    estimulante, é um ritual, um momento de deleite e conexão.
                    Mais do que um negócio, a CoffeeShop é a realização de um
                    sonho antigo. Somos uma família apaixonada por café, que se
                    dedica a oferecer a cada cliente uma experiência única e
                    inesquecível.
                </Text>
            </div>
            
            <div 
                className="
                    flex items-center justify-center p-4 md:p-10 relative
                    bg-custom-banner bg-center bg-cover bg-no-repeat
                    text-white font-bold
                ">
                <Overlay color="#30261c" zIndex={1} blur={3}/>

                <div 
                    className="
                        relative z-[1] my-4 py-4 flex flex-wrap flex-row 
                        items-center justify-center gap-4 w-3/4
                    ">
                    <Text size="xl" ta="center" fw={700}>
                        Receba as novidades por email!
                    </Text>

                    <TextField placeholder="Digite seu email" />
                </div>
            </div>

            <footer className="p-6 text-white bg-[#30261c]">
                <Container className="flex justify-between">
                    <h3 className="text-white text-xl font-bold">
                        Coffee Shop
                    </h3>

                    <ul className="flex flex-col justify-between">
                        <h3>PRIVACY</h3>
                        <li>Terms of use</li>
                        <li>Privacy Policy</li>

                        <h3>SERVICES</h3>
                        <li>Shop</li>
                        <li>Order ahead</li>
                    </ul>

                    <ul className="flex flex-col justify-between">
                        <h3>PRIVACY</h3>
                        <li>Terms of use</li>
                        <li>Privacy Policy</li>

                        <h3>SERVICES</h3>
                        <li>Shop</li>
                        <li>Order ahead</li>
                    </ul>

                    <ul className="flex flex-col justify-between">
                        <h3>PRIVACY</h3>
                        <li>Terms of use</li>
                        <li>Privacy Policy</li>

                        <h3>SERVICES</h3>
                        <li>Shop</li>
                        <li>Order ahead</li>
                    </ul>

                    <ul className="flex flex-col justify-between">
                        <h3>PRIVACY</h3>
                        <li>Terms of use</li>
                        <li>Privacy Policy</li>

                        <h3>SERVICES</h3>
                        <li>Shop</li>
                        <li>Order ahead</li>
                    </ul>
                </Container>
            </footer>

            <TailwindIndicator />
        </>
    );
}
