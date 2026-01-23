package net.bigpoint.cityrama.view.field.ui.components.fieldObjects
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.ClientFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.InteractiveObjectEvent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.EstablishedManagerClientFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HighlightManagerClientObjects;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HitZoneAssistant;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IHighlightManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.field3d.objects.SpriteMatrixObject3d;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public class ClientFieldObject extends SpriteMatrixObject3d implements IInteraction, IEstablishedManagerImplementation
   {
      
      protected var _hitzoneContainer:Sprite;
      
      protected var _hitzoneAssistant:HitZoneAssistant;
      
      protected var _billboardObjectContainer:SmartObjectContainer;
      
      protected var _assetCollection:PreloadableDisplayObject;
      
      protected var _concreteComposition:Sprite;
      
      private var _establishedManager:EstablishedManagerClientFieldObject;
      
      private var _clientFieldObjectVo:ClientFieldObjectVo;
      
      private var _highlightManager:IHighlightManager;
      
      private var _tolerancePoint:Point;
      
      private var _clickLock:Boolean;
      
      public function ClientFieldObject(param1:PreloadableDisplayObject, param2:MatrixObject3dVo)
      {
         var _loc3_:DisplayObject = null;
         this._hitzoneContainer = new Sprite();
         this._billboardObjectContainer = new SmartObjectContainer();
         this._concreteComposition = new Sprite();
         super(this._concreteComposition,param2);
         this._hitzoneAssistant = new HitZoneAssistant(this._hitzoneContainer,this._billboardObjectContainer);
         this._clientFieldObjectVo = param2 as ClientFieldObjectVo;
         this._assetCollection = param1;
         this.prepareEstablishedManager();
         this.invalidateEstablishedManager();
         this.addContainer(this._hitzoneContainer,true);
         this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
         this.prepareHighlightManager();
         for each(_loc3_ in this.sprites)
         {
            if(_loc3_ is Sprite)
            {
               (_loc3_ as Sprite).mouseEnabled = false;
            }
         }
         this._hitzoneContainer.mouseEnabled = true;
         this.usePreciseValues = true;
      }
      
      protected function addContainer(param1:Sprite, param2:Boolean = false, param3:Boolean = false) : void
      {
         param1.mouseChildren = param3;
         param1.mouseEnabled = param2;
         this._concreteComposition.addChild(param1);
      }
      
      public function prepareHighlightManager() : void
      {
         if(this._highlightManager == null)
         {
            this._highlightManager = new HighlightManagerClientObjects();
         }
         this._highlightManager.prepareHighlightManager(this._clientFieldObjectVo,this._billboardObjectContainer);
      }
      
      public function invalidateHighlightManager(param1:String, param2:Boolean = true) : void
      {
         this._highlightManager.invalidateHighlightManager(param1,param2);
      }
      
      public function invalidateEstablishedManager() : void
      {
         this._establishedManager.invalidate();
      }
      
      public function prepareEstablishedManager() : void
      {
         if(this._establishedManager == null)
         {
            if(this._hitzoneAssistant == null)
            {
               throw new RamaCityError("Please instantiate _hitzoneAssistant first");
            }
            this.addContainer(this._billboardObjectContainer);
            this._establishedManager = new EstablishedManagerClientFieldObject();
            this._establishedManager.prepare(this._clientFieldObjectVo,this._billboardObjectContainer,this._assetCollection);
         }
      }
      
      public function dispatchRollOver(param1:Boolean = false) : void
      {
         var _loc2_:InteractiveObjectEvent = new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOVER,this);
         _loc2_.iconEvent = param1;
         dispatchEvent(_loc2_);
      }
      
      public function dispatchMouseClick() : void
      {
         dispatchEvent(new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_CLICK,this));
      }
      
      private function onMouseRollOver(param1:MouseEvent) : void
      {
         this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
         this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
         this._hitzoneContainer.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
         this._hitzoneContainer.addEventListener(MouseEvent.CLICK,this.onMouseClick);
         this.dispatchRollOver();
      }
      
      private function onMouseRollOut(param1:MouseEvent) : void
      {
         this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
         this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
         this.dispatchRollOut();
      }
      
      public function dispatchRollOut(param1:Boolean = false) : void
      {
         var _loc2_:InteractiveObjectEvent = new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOUT,this);
         _loc2_.iconEvent = param1;
         dispatchEvent(_loc2_);
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:Point = new Point(param1.stageX,param1.stageY);
         if(Point.distance(this._tolerancePoint,_loc2_) > 30)
         {
            this._clickLock = true;
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         this._tolerancePoint = new Point(param1.stageX,param1.stageY);
         this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
      }
      
      protected function onMouseClick(param1:MouseEvent) : void
      {
         if(!this._clickLock)
         {
            this.dispatchMouseClick();
            this.dispatchRollOut();
         }
         this._clickLock = false;
      }
      
      public function changeInteractionstate(param1:Boolean) : void
      {
         this._hitzoneContainer.mouseEnabled = param1;
      }
   }
}

