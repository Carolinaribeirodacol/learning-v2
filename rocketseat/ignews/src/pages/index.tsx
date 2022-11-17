import Head from 'next/head';
import { SubscribeButton } from '../components/Header/SubscribeButton';
import styles from './home.module.scss';
import { GetStaticProps } from 'next';
import { stripe } from '../services/stripe';

interface HomeProps {
  product: {
    priceId: string;
    amount: number;
  };
}

// Client-side => carrega através de uma ação do usuário
// Server-side => carrega assim que a página é carregada
// Static site generation => dados estáticos que podem ser utilizados para todos

export default function Home({ product }: HomeProps) {
  return (
    <>
      <Head>
        <title>Home | IgNews</title>
      </Head>

      <main className={styles.contentContainer}>
        <section className={styles.hero}>
          <span>👏 Hey, welcome</span>
          <h1>
            News about the <span>React</span> world.
          </h1>
          <p>
            Get access to all the pubblications
            <br />
            <span>for {product.amount} mounth</span>
          </p>
          <SubscribeButton priceId={product.priceId} />
        </section>

        <img src="/images/avatar.svg" alt="Girl coding" />
      </main>
    </>
  );
}

export const getStaticProps: GetStaticProps = async () => {
  const price = await stripe.prices.retrieve('price_1LimEgBRtkosQaMMb0bOHNwQ');

  const product = {
    priceId: price.id,
    amount: new Intl.NumberFormat('en-US', {
      style: 'currency',
      currency: 'USD',
    }).format(price.unit_amount / 100),
  };

  return {
    props: {
      product,
    },
    revalidate: 60 * 60 * 24, // 24 hours
  };
};
