package net.bigpoint.cityrama.view.common.components
{
   import spark.components.List;
   
   public class ExternalScrollableList extends List
   {
      
      private static var _skinParts:Object = {
         "dataGroup":false,
         "hscrollerBar":true,
         "scroller":false,
         "dropIndicator":false
      };
      
      public var hscrollerBar:CustomHScrollBar;
      
      public function ExternalScrollableList()
      {
         super();
      }
      
      public function scrollToPosition(param1:Number) : void
      {
         this.hscrollerBar.scrollTo(param1);
      }
      
      public function scrollToPage(param1:int) : void
      {
         var _loc2_:Number = this.hscrollerBar.pageSize * param1;
         this.scrollToPosition(_loc2_);
      }
      
      public function get pageIndex() : int
      {
         return Math.ceil(this.hscrollerBar.value / (this.hscrollerBar.pageSize + 1));
      }
      
      public function get numPages() : int
      {
         return Math.ceil(this.hscrollerBar.maximum / (this.hscrollerBar.pageSize + 1));
      }
   }
}

