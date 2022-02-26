function d = dist (uv, mn) {
	% computing euclidean distance (sqrt(sum for each(delta^2)))
	d = sqrt(sum((uv-mn).^2))
}