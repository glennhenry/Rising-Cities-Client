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
         super();
      }
      
      public function get categoryName() : String
      {
         return this._categoryName;
      }
      
      public function set categoryName(param1:String) : void
      {
         this._categoryName = param1;
      }
      
      public function get categoryIcon() : BriskDynaVo
      {
         return this._categoryIcon;
      }
      
      public function set categoryIcon(param1:BriskDynaVo) : void
      {
         this._categoryIcon = param1;
      }
      
      public function get categoryIndex() : int
      {
         return this._categoryIndex;
      }
      
      public function set categoryIndex(param1:int) : void
      {
         this._categoryIndex = param1;
      }
      
      public function get disabled() : Boolean
      {
         return this._disabled;
      }
      
      public function set disabled(param1:Boolean) : void
      {
         this._disabled = param1;
      }
      
      public function get discount() : Boolean
      {
         return this._discount;
      }
      
      public function set discount(param1:Boolean) : void
      {
         this._discount = param1;
      }
      
      public function get categoryId() : String
      {
         return this._categoryId;
      }
      
      public function set categoryId(param1:String) : void
      {
         this._categoryId = param1;
      }
   }
}

