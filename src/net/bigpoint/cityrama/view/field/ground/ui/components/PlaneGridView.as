package net.bigpoint.cityrama.view.field.ground.ui.components
{
   import as3isolib.core.IIsoContainer;
   import as3isolib.display.IsoGroup;
   import as3isolib.display.primitive.IsoRectangle;
   import as3isolib.graphics.SolidColorFill;
   
   public class PlaneGridView extends IsoGroup
   {
      
      private var _tileWidthNumber:int;
      
      private var _tileHeightNumber:int;
      
      private var _tileSize:Number;
      
      private var _color:uint = 65280;
      
      private var _paramsSet:Boolean;
      
      public function PlaneGridView()
      {
         super();
      }
      
      public function setGridSize(param1:int, param2:int, param3:Number) : void
      {
         if(this._tileWidthNumber != param1 || this._tileWidthNumber != param1 || this._tileSize != param3)
         {
            this._tileWidthNumber = param1;
            this._tileHeightNumber = param2;
            this._tileSize = param3;
            this.drawBuildingGrid();
         }
         this._paramsSet = true;
      }
      
      private function drawBuildingGrid() : void
      {
         var _loc1_:IsoRectangle = null;
         var _loc3_:int = 0;
         this.removeAllChildren();
         var _loc2_:int = 0;
         while(_loc2_ < this._tileWidthNumber)
         {
            _loc3_ = 0;
            while(_loc3_ < this._tileHeightNumber)
            {
               _loc1_ = new IsoRectangle();
               _loc1_.width = this._tileSize;
               _loc1_.length = this._tileSize;
               _loc1_.x = _loc2_ * this._tileSize;
               _loc1_.y = _loc3_ * this._tileSize;
               _loc1_.fill = new SolidColorFill(this._color,0.5);
               this.addChild(_loc1_);
               _loc3_++;
            }
            _loc2_++;
         }
         this.render();
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:IIsoContainer = null;
         this._color = param1;
         if(this._paramsSet)
         {
            this.drawBuildingGrid();
            for each(_loc2_ in this.displayListChildrenArray)
            {
               if(_loc2_ is IsoRectangle)
               {
                  (_loc2_ as IsoRectangle).fill = new SolidColorFill(this._color,0.5);
               }
            }
         }
         this.render();
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.container.visible = param1;
      }
   }
}

