package net.bigpoint.cityrama.view.field.ui.components.fieldObjects
{
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.InteractiveObjectEvent;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.AnimationSlotManager;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BasementViewManager;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.EstablishedManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HighlightManager;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HighlightManagerExtended;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HitZoneAssistant;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.IconStateManager;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.InformationFloaterManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IAnimationSlot;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IAnimationSlotManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBasement;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBasementViewManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IDemolishManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IHighlightManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIconState;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIconStateManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloat;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloaterManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.ILayoutViewManager;
   import net.bigpoint.field3d.objects.SpriteMatrixObject3d;
   import org.puremvc.as3.patterns.facade.Facade;
   
   public class BillboardObject extends SpriteMatrixObject3d implements IAnimationSlot, IInteraction, IIconState, IDemolishManager, IInformationFloat, IBasement, IEstablishedManagerImplementation, ILayoutViewManager
   {
      
      protected var _animationSlotManager:IAnimationSlotManager;
      
      protected var _assetCollection:BillboardAssetsReferenceHolder;
      
      protected var _establishedManager:IEstablishedManager;
      
      protected var _buildUpManager:IBuildUpManager;
      
      protected var _highlightManager:IHighlightManager;
      
      protected var _iconStateManager:IIconStateManager;
      
      protected var _informationFloaterManager:IInformationFloaterManager;
      
      protected var _basementViewManager:IBasementViewManager;
      
      protected var _timerTicked:int;
      
      protected var _concreteComposition:Sprite;
      
      protected var _billbordObjectContainer:SmartObjectContainer;
      
      protected var _hitzoneContainer:Sprite;
      
      protected var _iconContainer:Sprite;
      
      protected var _hitzoneAssistant:HitZoneAssistant;
      
      private var _tolerancePoint:Point;
      
      private var _clickLock:Boolean;
      
      protected var _productionAnimationContainer:Sprite;
      
      private var _hitzoneOldPos:Point;
      
      private var _hitzoneOld:DisplayObject;
      
      public function BillboardObject(param1:BillboardAssetsReferenceHolder, param2:BillboardObjectVo)
      {
         var _loc3_:DisplayObject = null;
         this._concreteComposition = new Sprite();
         this._billbordObjectContainer = new SmartObjectContainer();
         this._hitzoneContainer = new Sprite();
         this._iconContainer = new Sprite();
         this._productionAnimationContainer = new Sprite();
         super(this._concreteComposition,param2);
         this._hitzoneAssistant = new HitZoneAssistant(this._hitzoneContainer,this._billbordObjectContainer);
         this._assetCollection = param1;
         this.prepareEstablishedManager();
         this.invalidateEstablishedManager();
         this.addContainer(this._hitzoneContainer,true);
         this.addContainer(this._iconContainer,true);
         this.addContainer(this._productionAnimationContainer,true);
         this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
         this._iconContainer.addEventListener(MouseEvent.CLICK,this.onMouseClick);
         this._iconContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
         this._productionAnimationContainer.addEventListener(MouseEvent.CLICK,this.onMouseClick);
         this._productionAnimationContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
         this.prepareHighlightManager();
         this.prepareIconStateManager();
         this.prepareInformationFloaterManager();
         this.prepareBasementViewManager();
         this.prepareAnimationSlotManager();
         for each(_loc3_ in this.sprites)
         {
            if(_loc3_ is Sprite)
            {
               (_loc3_ as Sprite).mouseEnabled = false;
            }
         }
         this._hitzoneContainer.mouseEnabled = true;
         this._iconContainer.mouseEnabled = true;
         this.usePreciseValues = true;
      }
      
      public function changeInteractionstate(param1:Boolean) : void
      {
         this._hitzoneContainer.mouseEnabled = param1;
         this._iconContainer.mouseEnabled = param1;
      }
      
      public function prepareEstablishedManager() : void
      {
         if(this._establishedManager == null)
         {
            if(this._hitzoneAssistant == null)
            {
               throw new RamaCityError("Please instantiate _hitzoneAssistant first");
            }
            this.addContainer(this._billbordObjectContainer);
            this._establishedManager = new EstablishedManagerDefault();
            this._establishedManager.prepare(this.billboardObjectVo,this._billbordObjectContainer,this._assetCollection.mainAsset);
         }
      }
      
      public function prepareHighlightManager() : void
      {
         if(this._highlightManager == null)
         {
            if(this is ExpansionFieldObject)
            {
               this._highlightManager = new HighlightManagerExtended();
            }
            else
            {
               this._highlightManager = new HighlightManager();
            }
         }
         this._highlightManager.prepareHighlightManager(this.billboardObjectVo,this._billbordObjectContainer);
      }
      
      public function set iconVisibility(param1:Boolean) : void
      {
         this.billboardObjectVo.hideIconsForMoveMode = !param1;
         this.invalidateIconStateManager();
      }
      
      public function prepareIconStateManager() : void
      {
         if(this._iconStateManager == null)
         {
            this._iconStateManager = new IconStateManager();
         }
         this._iconStateManager.prepareIconStateManager(this.billboardObjectVo,this._iconContainer,this._billbordObjectContainer);
      }
      
      public function prepareInformationFloaterManager() : void
      {
         if(this._informationFloaterManager == null)
         {
            this._informationFloaterManager = new InformationFloaterManager();
         }
         this._informationFloaterManager.prepareInformationFloaterManager(this.billboardObjectVo,this._billbordObjectContainer);
      }
      
      public function prepareBasementViewManager() : void
      {
         if(this._basementViewManager == null)
         {
            this._basementViewManager = new BasementViewManager();
         }
         this._basementViewManager.prepareBasementViewManager(this.billboardObjectVo,this._billbordObjectContainer,this._assetCollection);
      }
      
      public function invalidateEstablishedManager() : void
      {
         this._establishedManager.invalidate();
         if(this._basementViewManager != null)
         {
            this.invalidateBasementViewManager(true);
         }
      }
      
      public function invalidateHighlightManager(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:PlayfieldExpansionsProxy = null;
         if(!this.billboardObjectVo.isExpansionObject)
         {
            this._highlightManager.invalidateHighlightManager(param1,param2);
            this.x = Math.abs(x);
            this.y = Math.abs(y);
         }
         else if(this.billboardObjectVo.expansionObject)
         {
            _loc3_ = Facade.getInstance().retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
            if(Boolean(_loc3_) && _loc3_.isBuyableExpansions(this.billboardObjectVo.expansionObject.expansionFieldObjectVo.configOrigin.id))
            {
               this.billboardObjectVo.expansionObject.invalidateHighlightManager(param1,param2);
            }
         }
      }
      
      public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         this._iconStateManager.invalidateIconStateManager(param1);
      }
      
      public function invalidateInformationFloaterManager(param1:Boolean = false) : void
      {
         this._informationFloaterManager.invalidateInformationFloaterManager(param1);
      }
      
      public function invalidateBasementViewManager(param1:Boolean = false) : void
      {
         this._basementViewManager.invalidateBasementViewManager(param1);
      }
      
      public function get billboardObjectVo() : BillboardObjectVo
      {
         return _data as BillboardObjectVo;
      }
      
      protected function addContainer(param1:Sprite, param2:Boolean = false, param3:Boolean = false) : void
      {
         param1.mouseChildren = param3;
         param1.mouseEnabled = param2;
         this._concreteComposition.addChild(param1);
      }
      
      public function expandHitzone() : void
      {
         var _loc1_:Shape = null;
         if(this._hitzoneContainer.numChildren > 0)
         {
            this._hitzoneOld = this._hitzoneContainer.getChildAt(0);
            this._hitzoneContainer.removeChildAt(0);
            _loc1_ = new Shape();
            _loc1_.graphics.beginFill(16711680,0);
            _loc1_.graphics.drawRect(-250,-250,500,500);
            _loc1_.graphics.endFill();
            this._hitzoneContainer.addChild(_loc1_);
         }
      }
      
      public function shrinkHitzone() : void
      {
         if(this._hitzoneOld)
         {
            if(this._hitzoneContainer.numChildren > 0 && this._hitzoneContainer.getChildAt(0) is Shape)
            {
               this._hitzoneContainer.removeChildAt(0);
            }
            this._hitzoneContainer.addChild(this._hitzoneOld);
         }
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
      
      private function onIconMouseOver(param1:MouseEvent) : void
      {
         this._iconContainer.removeEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
         this._iconContainer.addEventListener(MouseEvent.MOUSE_OUT,this.onIconMouseOut);
         this._productionAnimationContainer.removeEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
         this._productionAnimationContainer.addEventListener(MouseEvent.MOUSE_OUT,this.onIconMouseOut);
         this.dispatchRollOver(true);
      }
      
      private function onIconMouseOut(param1:MouseEvent) : void
      {
         this._iconContainer.removeEventListener(MouseEvent.MOUSE_OUT,this.onIconMouseOut);
         this._iconContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
         this._productionAnimationContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
         this._productionAnimationContainer.removeEventListener(MouseEvent.MOUSE_OUT,this.onIconMouseOut);
         this.dispatchRollOut(true);
      }
      
      public function dispatchRollOver(param1:Boolean = false) : void
      {
         var _loc2_:InteractiveObjectEvent = new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOVER,this);
         _loc2_.iconEvent = param1;
         dispatchEvent(_loc2_);
      }
      
      public function dispatchMouseClick() : void
      {
         if(!this.billboardObjectVo.userInteractionLocked)
         {
            dispatchEvent(new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_CLICK,this));
         }
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
      
      public function prepareAnimationSlotManager() : void
      {
         if(this._animationSlotManager == null)
         {
            this._animationSlotManager = new AnimationSlotManager();
         }
         this._animationSlotManager.prepareAnimationSlotManager(this.billboardObjectVo,this._billbordObjectContainer,this._productionAnimationContainer);
      }
      
      public function invalidateAnimationSlotManager() : void
      {
         this._animationSlotManager.invalidateAnimationSlotManager();
      }
   }
}

