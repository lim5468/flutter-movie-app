enum MovieCategory {
  nowPlaying('now_playing', 'Now Playing'),
  popular('popular', 'Popular'),
  topRated('top_rated', 'Top Rated'),
  upcoming('upcoming', 'Upcoming');

  const MovieCategory(this.name, this.displayName);

  final String name;
  final String displayName;
}
