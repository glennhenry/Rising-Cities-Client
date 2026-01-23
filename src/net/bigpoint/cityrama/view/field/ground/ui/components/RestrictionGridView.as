package net.bigpoint.cityrama.view.field.ground.ui.components
{
   import as3isolib.display.IsoGroup;
   import as3isolib.display.primitive.IsoRectangle;
   import as3isolib.enum.IsoOrientation;
   import as3isolib.graphics.BitmapFill;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   
   public class RestrictionGridView extends IsoGroup
   {
      
      public static const RED:uint = 4294901760;
      
      public static const GREEN:uint = 4278255414;
      
      public static const WHITE:uint = 4289374890;
      
      private var _sourceRestrictions:Vector.<ConfigGroundRestrictionDTO>;
      
      private var _tileSize:Number;
      
      private var _maxSize:Rectangle;
      
      private var smallHeatMapBData:BitmapData;
      
      private var _restrictionRect:IsoRectangle;
      
      private var _restrictionFill:BitmapFill;
      
      public function RestrictionGridView(param1:Number, param2:Rectangle)
      {
         super();
         this._tileSize = param1;
         this._maxSize = param2;
         this.container.alpha = 0.3;
         this.buildMap();
      }
      
      public function setSource(param1:Vector.<ConfigGroundRestrictionDTO>) : void
      {
         this._sourceRestrictions = param1;
         this.buildMap();
         this.removeAllChildren();
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.container.visible = param1;
      }
      
      private function buildMap() : void
      {
         this.smallHeatMapBData = new BitmapData(this._maxSize.width + this._maxSize.x,this._maxSize.height + this._maxSize.y,true,16777215);
         this.smallHeatMapBData.lock();
         this.smallHeatMapBData.unlock();
      }
      
      public function addTile(param1:int, param2:int, param3:Number = 4278255414) : void
      {
         this.smallHeatMapBData.setPixel32(param1,param2,param3);
         TweenMax.killDelayedCallsTo(this.updateView);
         TweenMax.delayedCall(0.1,this.updateView);
      }
      
      private function updateView() : void
      {
         this.removeAllChildren();
         this._restrictionRect = new IsoRectangle();
         this._restrictionRect.setSize(this._maxSize.width * this._tileSize,this._maxSize.height * this._tileSize,0);
         this._restrictionRect.moveTo(this._maxSize.x * this._tileSize,this._maxSize.y * this._tileSize,0);
         this._restrictionRect.strokes = [];
         var _loc1_:Matrix = new Matrix();
         _loc1_.scale(this._tileSize,this._tileSize);
         this._restrictionFill = new BitmapFill(this.smallHeatMapBData,IsoOrientation.XY,_loc1_);
         this._restrictionRect.fills = [this._restrictionFill];
         addChild(this._restrictionRect);
      }
      
      public function set maxSize(param1:Rectangle) : void
      {
         this._maxSize = param1;
      }
   }
}

