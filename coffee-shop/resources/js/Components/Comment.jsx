import { Text, Avatar, Group, Flex } from '@mantine/core';
import Rating from './Rating';

export function Comment({ content, userName, postedAt = "", rating = false, ratingValue, ratingReadOnly}) {
  return (
    <div>
      <Group>
        <Avatar
          src="https://raw.githubusercontent.com/mantinedev/mantine/master/.demo/avatars/avatar-1.png"
          alt="Jacob Warnhalter"
          radius="xl"
        />
        <div>
          <Flex
            gap="xs"
            justify="flex-start"
            align="center"
            direction="row"
            wrap="wrap"
          >
            <Text size="sm">{userName}</Text>
            <Rating value={ratingValue} readOnly={ratingReadOnly} />
          </Flex>
          <Text size="xs" c="dimmed">
            10 minutes ago
          </Text>
        </div>
      </Group>
      <Text pl={54} pt="sm" size="sm">
        {content}
      </Text>
    </div>
  );
}