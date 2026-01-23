package net.bigpoint.cityrama.view.field.ground.ui.components
{
   import as3isolib.enum.IsoOrientation;
   import as3isolib.graphics.BitmapFill;
   import as3isolib.graphics.Stroke;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.InteractiveObjectEvent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableImage;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.InformationFloaterManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloat;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloaterManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.field3d.objects.RectMatrixObject3d;
   
   public class PlaneObject extends RectMatrixObject3d implements IPlaneObject, IInteraction, IInformationFloat
   {
      
      public static const UPDATE_PRESENTATION:String = "UPDATE_PRESENTATION";
      
      private var _standardFill:BitmapFill;
      
      protected var _informationFloaterManager:IInformationFloaterManager;
      
      public function PlaneObject(param1:DisplayObject, param2:PlaneObjectVo)
      {
         super(param1,param2);
         this.stroke = new Stroke(0,0,0);
         this.planeObjectVo = param2;
         this.planeObjectVo.addEventListener(PlaneObjectVo.DATA_CHANGED,this.onDataChanged);
         this.container.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
         this.prepareInformationFloaterManager();
         this.setStandardFill();
      }
      
      public function validateData() : void
      {
      }
      
      public function onDataChanged(param1:Event) : void
      {
         if(param1.type != PlaneObjectVo.DATA_CHANGED)
         {
            throw new IllegalOperationError("DONT CALL THIS FUNCTION DIRECTLY!!!!");
         }
         this.redraw();
      }
      
      public function redraw() : void
      {
         var _loc1_:DisplayObject = null;
         if(presentation is PreloadableImage)
         {
            _loc1_ = (presentation as PreloadableImage).presentation;
            if(!(presentation as PreloadableImage).loadComplete)
            {
               presentation.addEventListener(PreloadableImage.PRELOADING_COMPLETE,this.autoredraw);
            }
         }
         else
         {
            _loc1_ = presentation;
         }
         var _loc2_:BitmapData = new BitmapData(_loc1_.width,_loc1_.height,true,16777215);
         _loc2_.lock();
         var _loc3_:Number = this.width * this.planeObjectVo.matrix3dCoordinates.width / _loc2_.width;
         _loc2_.draw(_loc1_,new Matrix());
         _loc2_.unlock();
         this.fill = new BitmapFill(_loc2_,IsoOrientation.XY,new Matrix(_loc3_,0,0,_loc3_),null,false,true);
         this.render();
      }
      
      private function autoredraw(param1:Event) : void
      {
         this.redraw();
      }
      
      public function get planeObjectVo() : PlaneObjectVo
      {
         return _data as PlaneObjectVo;
      }
      
      public function get objectVo() : IPlaneObjectVo
      {
         return _data as IPlaneObjectVo;
      }
      
      public function set planeObjectVo(param1:PlaneObjectVo) : void
      {
         _data = param1;
         this.setSize(this.planeObjectVo.matrix3dCoordinates.width * this.planeObjectVo.tilesize,this.planeObjectVo.matrix3dCoordinates.height * this.planeObjectVo.tilesize,0);
         this.x = this.planeObjectVo.matrix3dCoordinates.x * this.planeObjectVo.tilesize;
         this.y = this.planeObjectVo.matrix3dCoordinates.y * this.planeObjectVo.tilesize;
      }
      
      private function onMouseMove(param1:Event) : void
      {
         this.container.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
      }
      
      private function onMouseRollOver(param1:Event) : void
      {
         if(!this.planeObjectVo.userInteractionLocked)
         {
            this.container.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
            this.container.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
            this.container.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
            this.container.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
            this.container.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
            this.container.addEventListener(MouseEvent.CLICK,this.onMouseClick);
            dispatchEvent(new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOVER,this));
         }
      }
      
      private function onMouseRollOut(param1:Event = null) : void
      {
         this.container.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
         this.container.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.container.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         this.container.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
         dispatchEvent(new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOUT,this));
      }
      
      private function onMouseUp(param1:Event) : void
      {
         this.container.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
      }
      
      private function onMouseDown(param1:Event) : void
      {
         this.container.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
      }
      
      private function onMouseClick(param1:Event) : void
      {
         if(!this.planeObjectVo.userInteractionLocked)
         {
            dispatchEvent(new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_CLICK,this));
         }
      }
      
      public function restEventListener() : void
      {
         this.onMouseRollOut();
      }
      
      public function prepareHighlightManager() : void
      {
      }
      
      public function invalidateHighlightManager(param1:String, param2:Boolean = true) : void
      {
      }
      
      public function get standardFill() : BitmapFill
      {
         return this._standardFill;
      }
      
      private function setStandardFill() : void
      {
         var _loc1_:DisplayObject = null;
         if(presentation is PreloadableImage)
         {
            _loc1_ = (presentation as PreloadableImage).presentation;
            if(!(presentation as PreloadableImage).loadComplete)
            {
               presentation.addEventListener(PreloadableImage.PRELOADING_COMPLETE,this.autoStandardFill);
            }
         }
         else
         {
            _loc1_ = presentation;
         }
         var _loc2_:BitmapData = new BitmapData(_loc1_.width,_loc1_.height,true,16777215);
         _loc2_.lock();
         var _loc3_:Number = this.width * this.planeObjectVo.matrix3dCoordinates.width / _loc2_.width;
         _loc2_.draw(_loc1_,new Matrix());
         _loc2_.unlock();
         this._standardFill = new BitmapFill(_loc2_,IsoOrientation.XY,new Matrix(_loc3_,0,0,_loc3_),null,false,true);
      }
      
      private function autoStandardFill(param1:Event) : void
      {
         this.setStandardFill();
      }
      
      public function prepareInformationFloaterManager() : void
      {
         if(this._informationFloaterManager == null)
         {
            this._informationFloaterManager = new InformationFloaterManager();
         }
         this._informationFloaterManager.prepareInformationFloaterManager(this.planeObjectVo,null);
      }
      
      public function invalidateInformationFloaterManager(param1:Boolean = false) : void
      {
         this._informationFloaterManager.invalidateInformationFloaterManager(param1);
      }
   }
}

