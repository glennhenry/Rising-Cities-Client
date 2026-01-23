package net.bigpoint.cityrama.model.common.vo
{
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   
   public class CategoryMenuListVo
   {
      
      private var _categoryName:String;
      
      private var _categoryIcon:BriskDynaVo;
      
      private var _categoryIndex:int;
      
      private var _categoryId:String;
      
      private var _disabled:Boolean = false;
      
      private var _discount:Boolean = false;
      
      public function CategoryMenuListVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public function get categoryName() : String
      {
         return this._categoryName;
      }
      
      public function set categoryName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._categoryName = param1;
         }
      }
      
      public function get categoryIcon() : BriskDynaVo
      {
         return this._categoryIcon;
      }
      
      public function set categoryIcon(param1:BriskDynaVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._categoryIcon = param1;
         }
      }
      
      public function get categoryIndex() : int
      {
         return this._categoryIndex;
      }
      
      public function set categoryIndex(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._categoryIndex = param1;
         }
      }
      
      public function get disabled() : Boolean
      {
         return this._disabled;
      }
      
      public function set disabled(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._disabled = param1;
         }
      }
      
      public function get discount() : Boolean
      {
         return this._discount;
      }
      
      public function set discount(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._discount = param1;
         }
      }
      
      public function get categoryId() : String
      {
         return this._categoryId;
      }
      
      public function set categoryId(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._categoryId = param1;
         }
      }
   }
}

