import { Text, SimpleGrid, Container, rem } from '@mantine/core';
import { IconTruck, IconCertificate, IconCoin } from '@tabler/icons-react';


export default function Feature({ icon: Icon, title, description, className, ...others }) {
  return (
    <div className='relative pt-[var(--mantine-spacing-xl)] pl-[var(--mantine-spacing-xl)]' {...others}>
      <div className='absolute h-28 w-40 top-0 left-0 bg-slate-500 z-[1]' />

      <div className='relative z-[2]'>
        <Icon style={{ width: rem(38), height: rem(38) }} className='text-white' stroke={1.5} />
        <Text fw={700} fz="lg" mb="xs" mt={5} className='text-white'>
          {title}
        </Text>
        <Text c="dimmed" fz="sm">
          {description}
        </Text>
      </div>
    </div>
  );
}

const mockdata = [
  {
    icon: IconTruck,
    title: 'Free Worldwide shipping',
    description:
      'As electricity builds up inside its body, it becomes more aggressive. One theory is that the electricity.',
  },
  {
    icon: IconTruck,
    title: 'Best Quality Product',
    description:
      'Slakoth’s heart beats just once a minute. Whatever happens, it is content to loaf around motionless.',
  },
  {
    icon: IconTruck,
    title: 'Very Affordable Pricing',
    description:
      'Thought to have gone extinct, Relicanth was given a name that is a variation of the name of the person who discovered.',
  },
];

export function FeaturesAsymmetrical() {
  const items = mockdata.map((item) => <Feature {...item} key={item.title} />);

  return (
    <Container mt={30} mb={30} size="lg">
      <SimpleGrid cols={{ base: 1, sm: 3 }} spacing={50}>
        {items}
      </SimpleGrid>
    </Container>
  );
}