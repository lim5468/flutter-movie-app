enum MovieCategory {
  nowPlaying('now_playing'),
  popular('popular'),
  topRated('top_rated'),
  upcoming('upcoming');

  const MovieCategory(this.name);

  final String name;
}
