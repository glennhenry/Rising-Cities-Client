package net.bigpoint.cityrama.view.field.ground.ui.components
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.model.field.ground.vo.PierObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.InteractiveObjectEvent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.EstablishedManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HitZoneAssistant;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.InformationFloaterManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloat;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloaterManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.field3d.objects.SpriteMatrixObject3d;
   
   public class PierObject extends SpriteMatrixObject3d implements IPlaneObject, IEstablishedManagerImplementation, IInformationFloat, IInteraction
   {
      
      private var _pierObjectVo:PierObjectVo;
      
      private var _concreteComposition:Sprite = new Sprite();
      
      protected var _hitzoneContainer:Sprite = new Sprite();
      
      protected var _hitzoneAssistant:HitZoneAssistant;
      
      private var _tolerancePoint:Point;
      
      private var _clickLock:Boolean;
      
      protected var _assetCollection:BillboardAssetsReferenceHolder;
      
      protected var _establishedManager:IEstablishedManager;
      
      protected var _informationFloaterManager:IInformationFloaterManager;
      
      protected var _billboardObjectContainer:SmartObjectContainer = new SmartObjectContainer();
      
      public function PierObject(param1:BillboardAssetsReferenceHolder, param2:PierObjectVo)
      {
         super(this._concreteComposition,param2);
         this._concreteComposition.mouseEnabled = true;
         this._hitzoneAssistant = new HitZoneAssistant(this._hitzoneContainer,this._billboardObjectContainer);
         this._pierObjectVo = param2;
         this._assetCollection = param1;
         this.prepareEstablishedManager();
         this.invalidateEstablishedManager();
         this.prepareInformationFloaterManager();
         this.addContainer(this._hitzoneContainer,true);
         this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
         this._hitzoneContainer.mouseEnabled = true;
      }
      
      public function get pierObjectVo() : PierObjectVo
      {
         return this._pierObjectVo;
      }
      
      public function get objectVo() : IPlaneObjectVo
      {
         return this._pierObjectVo;
      }
      
      public function prepareEstablishedManager() : void
      {
         if(this._establishedManager == null)
         {
            this.addContainer(this._billboardObjectContainer);
            this._establishedManager = new EstablishedManagerDefault();
            this._establishedManager.prepare(this.pierObjectVo,this._billboardObjectContainer,this._assetCollection.mainAsset);
         }
      }
      
      public function invalidateEstablishedManager() : void
      {
         this._establishedManager.invalidate();
      }
      
      protected function addContainer(param1:Sprite, param2:Boolean = false, param3:Boolean = false) : void
      {
         param1.mouseChildren = param3;
         param1.mouseEnabled = param2;
         this._concreteComposition.addChild(param1);
      }
      
      public function prepareInformationFloaterManager() : void
      {
         if(this._informationFloaterManager == null)
         {
            this._informationFloaterManager = new InformationFloaterManager();
         }
         this._informationFloaterManager.prepareInformationFloaterManager(this.pierObjectVo,null);
      }
      
      public function invalidateInformationFloaterManager(param1:Boolean = false) : void
      {
         this._informationFloaterManager.invalidateInformationFloaterManager(param1);
      }
      
      public function prepareHighlightManager() : void
      {
      }
      
      public function invalidateHighlightManager(param1:String, param2:Boolean = true) : void
      {
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:Point = new Point(param1.stageX,param1.stageY);
         if(Point.distance(this._tolerancePoint,_loc2_) > 30)
         {
            this._clickLock = true;
         }
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
      
      private function onMouseRollOut(param1:MouseEvent) : void
      {
         this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
         this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
         this.dispatchRollOut();
      }
      
      public function restEventListener() : void
      {
         this.onMouseRollOut(null);
      }
      
      public function dispatchRollOut() : void
      {
         dispatchEvent(new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOUT,this));
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
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         if(!this._clickLock)
         {
            this.dispatchMouseClick();
            this.dispatchRollOut();
         }
         this._clickLock = false;
      }
   }
}

