package net.bigpoint.cityrama.model.architecturalBook.vo
{
   import flash.display.Bitmap;
   
   public class SideMenueArchCategoryVO
   {
      
      private var _isNew:Boolean = false;
      
      private var _visual:Bitmap;
      
      private var _visualActive:Bitmap;
      
      private var _visualIcon:Bitmap;
      
      private var _selectionRing:Bitmap;
      
      private var _type:String;
      
      private var _tooltip:String;
      
      private var _enable:Boolean = true;
      
      private var _visible:Boolean = true;
      
      public function SideMenueArchCategoryVO()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function get visual() : Bitmap
      {
         return this._visual;
      }
      
      public function set visual(param1:Bitmap) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._visual = param1;
         }
      }
      
      public function get visualActive() : Bitmap
      {
         return this._visualActive;
      }
      
      public function set visualActive(param1:Bitmap) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._visualActive = param1;
         }
      }
      
      public function get visualIcon() : Bitmap
      {
         return this._visualIcon;
      }
      
      public function set visualIcon(param1:Bitmap) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._visualIcon = param1;
         }
      }
      
      public function get selectionRing() : Bitmap
      {
         return this._selectionRing;
      }
      
      public function set selectionRing(param1:Bitmap) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._selectionRing = param1;
         }
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._type = param1;
         }
      }
      
      public function get isNew() : Boolean
      {
         return this._isNew;
      }
      
      public function set isNew(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._isNew = param1;
         }
      }
      
      public function get tooltip() : String
      {
         return this._tooltip;
      }
      
      public function set tooltip(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._tooltip = param1;
         }
      }
      
      public function get enable() : Boolean
      {
         return this._enable;
      }
      
      public function set enable(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._enable = param1;
         }
      }
      
      public function get visible() : Boolean
      {
         return this._visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && param1))
         {
            this._visible = param1;
         }
      }
   }
}

