
# wildcardcmp

  Simple wildcard string comparison.

## API

```c
/**
 * Check if the given `string` matches `pattern`,
 * using `*` as a wildcard.  Will return `1` if
 * the two match.
 */

int
wildcardcmp(const char *pattern, const char *string);
```

## License

  MIT