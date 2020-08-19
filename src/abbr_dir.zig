// TODO: Write a function, accepting:
// - an Allocator,
// - a path string,
// - a home directory string,
// - and an array of (target, replacement) pairs,
// - and return an abbreviated path.
//
// A path segment is a 'level' in a path that traverses a file hierarchy.
// When encountering an undecodable segment, emit the first four bytes.
// When encountering a text segment (decodable by UTF-8), do the following:
//   If the length of the segment is four characters or less, just emit it in full
//   Otherwise, emit the first four characters of the segment
//   UNLESS the fourth character of the segment is an English vowel (aeiou), in which case emit the first three characters.

pub fn main() void {}
