% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/movieRSA.R
\name{movieRSA}
\alias{movieRSA}
\title{Create a movie of plotRSA plots, with changing surface and/or rotation}
\usage{
movieRSA(name, frames, dur = 2000, fps = 30, width = 800,
  height = 600, mirror = TRUE, savetodisk = TRUE, clean = TRUE)
}
\arguments{
\item{name}{Name for the subfolder containing all still pictures, and for the final movie file.}

\item{frames}{A list of lists: Each list contains parameters which are passed to the plotRSA function. See \code{\link{plotRSA}} for details.}

\item{dur}{Duration of the movie in miliseconds}

\item{fps}{Frame per second (defaults to 30)}

\item{width}{Width of the final movie in pixels}

\item{height}{Height of the final movie in pixels}

\item{mirror}{If \code{TRUE}, the frame sequence is mirrored at the end so that the movie ends at frame 1.}

\item{savetodisk}{If \code{TRUE} the files are saved to the disk. If \code{FALSE}, the movie is only shown on the screen}

\item{clean}{Should the still images be deleted?}
}
\description{
Create a movie of plotRSA plots, with changing surface and/or rotation
}
\details{
\code{frames} is a list of the first, intermediate, and the final parameters of the surface. Each scalar parameter defined in \code{frames} is interpolated between steps in order to create a smooth sequence of plots. Logical and character parameters are inherited from the first frame. Plots are saved as individual still pictures in a subfolder called \code{name} and finally glued together using ffmpeg. Hence, a ffmpeg installation is needed to create the movie (the still pictures can be produced without ffmpeg).
}
\examples{
\dontrun{
movieRSA(name="SD0",
		frames <- list(
	 	step1 = list(b0=0, xy=-.40, x2=.20, y2=.20, 
			rotation=list(x=-63, y=32, z=15),
			legend=FALSE, zlim=c(0, 4), param=FALSE),
	 	step2 = list(b0=0, xy=-.10, x2=.05, y2=.05, 
			rotation=list(x=-54, y=39, z=25)),
		step3 = list(b0=0, xy=-.40, x2=.20, y2=.20, 
			rotation=list(x=-45, y=45, z=35))
	 ),
	 mirror=TRUE, fps=30, dur=5000)
}
}
\seealso{
\code{\link{plotRSA}}
}
