import * as React from "react";
import ArrowRight from "../assets/images/icons/arrow-right-pink.png";
import ArrowLeft from "../assets/images/icons/arrow-left-pink.png";
import ArrowFirst from "../assets/images/icons/arrow-first-pink.png";
import ArrowLast from "../assets/images/icons/arrow-last-pink.png";
import Image from "next/image";
import { useRouter } from "next/router";

interface PaginationProps {
  totalPage: number;
}

export default function Pagination({ totalPage }: PaginationProps) {
  const router = useRouter();
  const currentPage = router.query.page
    ? parseInt(router.query.page as string)
    : 1;

  const pageArray = Array.from({ length: totalPage }, (_, i) => i + 1).filter(
    (pageNumber) => {
      const pageFilter =
        currentPage === 1
          ? pageNumber < 4
          : currentPage === 2
          ? pageNumber < 5
          : pageNumber >= currentPage - 1 && pageNumber <= currentPage + 2;
      return pageFilter;
    }
  );

  const handlePageChange = (selectedPage: number) => {
    const newQuery = { ...router.query, page: selectedPage };
    router.push({ query: newQuery });
  };

  const handleNextPage = () => {
    handlePageChange(currentPage + 1);
  };

  const handlePrevPage = () => {
    handlePageChange(currentPage - 1);
  };

  const handleFirstPage = () => {
    handlePageChange(1);
  };

  const handleLastPage = () => {
    handlePageChange(totalPage);
  };

  if (!totalPage) return <></>;
  return (
    <div className="container flex flex-row flex-wrap justify-center items-center gap-2 mx-auto space-x-2 bg-white shadow-main rounded-[15px] p-3 mb-12 ">
      {currentPage >= 3 && (
        <button onClick={handleFirstPage}>
          <Image src={ArrowFirst} alt="Go to first page" />
        </button>
      )}
      {currentPage > 1 && (
        <button onClick={handlePrevPage}>
          <Image src={ArrowLeft} alt="Go to previous page" />
        </button>
      )}

      {currentPage > 2 && (
        <span className=" text-pink-primary font-semibold ">...</span>
      )}
      {pageArray.map((pageNumber) => (
        <div
          key={pageNumber}
          className={`${
            pageNumber === currentPage ? "text-pink-primary" : "text-[#727481]"
          } font-semibold`}
          onClick={() => handlePageChange(pageNumber)}
        >
          {pageNumber}
        </div>
      ))}
      {currentPage < totalPage - 2 && (
        <span className=" text-pink-primary font-semibold ">...</span>
      )}
      {currentPage < totalPage && (
        <button onClick={handleNextPage}>
          <Image src={ArrowRight} alt="Go to next page" />
        </button>
      )}
      {currentPage <= totalPage - 2 && (
        <button onClick={handleLastPage}>
          <Image src={ArrowLast} alt="Go to first page" />
        </button>
      )}
    </div>
  );
}
