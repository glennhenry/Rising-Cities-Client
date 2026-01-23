package net.bigpoint.cityrama.model.detailViews.vo
{
   public class DropDownAmountListItemVo
   {
      
      private var _categoryLabel:String;
      
      private var _categoryAmount:Number;
      
      private var _sortType:String;
      
      public function DropDownAmountListItemVo()
      {
         super();
      }
      
      public function get categoryLabel() : String
      {
         return this._categoryLabel;
      }
      
      public function set categoryLabel(param1:String) : void
      {
         this._categoryLabel = param1;
      }
      
      public function get categoryAmount() : Number
      {
         return this._categoryAmount;
      }
      
      public function set categoryAmount(param1:Number) : void
      {
         this._categoryAmount = param1;
      }
      
      public function get sortType() : String
      {
         return this._sortType;
      }
      
      public function set sortType(param1:String) : void
      {
         this._sortType = param1;
      }
   }
}

