package net.bigpoint.cityrama.view.common.components
{
   import spark.components.List;
   
   public class ExternalScrollableList extends List
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         _skinParts = {
            "dataGroup":false,
            "hscrollerBar":true,
            "scroller":false,
            "dropIndicator":false
         };
      }
      
      public var hscrollerBar:CustomHScrollBar;
      
      public function ExternalScrollableList()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public function scrollToPosition(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.hscrollerBar.scrollTo(param1);
         }
      }
      
      public function scrollToPage(param1:int) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(this.hscrollerBar.pageSize * param1);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            this.scrollToPosition(_loc2_);
         }
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

