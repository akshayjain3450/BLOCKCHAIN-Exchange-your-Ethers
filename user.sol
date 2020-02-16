pragma solidity ^0.5.0;

contract info {
   struct seller_details{
      string name;
      int ether_count;
      uint id;
      int cost;
   }
   seller_details seller;
   seller_details seller1;

   function setSeller() public {
      seller = seller_details('Modem', 3, 4561,30);
      seller1=seller_details('aditi',4,3456,23);
   }
   function getsellerdetails() public view returns (int) {
      return seller.ether_count;
   }

   struct buyer_details{
       string buyer_name;
       int id;
       int no_ethers;

   }

   buyer_details buyer;
   buyer_details buyer1;

   function setBuyer() public {
      buyer = buyer_details('akshay', 389, 10);
      buyer1=buyer_details('kapil',234,2);
   }

   function get()public view returns(int){
       if ((seller.ether_count) <= (buyer.no_ethers))
       {
           (" in sufficient ethers only available");
       }
       else
       {
           return (seller.ether_count)-(buyer.no_ethers);
       }



   }
