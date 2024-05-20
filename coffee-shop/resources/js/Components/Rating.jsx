import { Rating as MantineRating } from '@mantine/core';

export default function Rating({ value = 0, readOnly = false }) {
  return <MantineRating value={value} fractions={2} readOnly={readOnly} />;
}