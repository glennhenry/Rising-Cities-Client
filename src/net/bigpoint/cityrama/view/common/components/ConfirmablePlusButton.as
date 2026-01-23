package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.patterns.facade.Facade;
   import spark.components.Button;
   import spark.components.Group;
   
   public class ConfirmablePlusButton extends Button
   {
      
      private static var _skinParts:Object = {
         "plusIcon":false,
         "labelDisplay":false,
         "iconDisplay":false
      };
      
      public var plusIcon:BriskImageDynaLib;
      
      private var _priceToConfirm:Number = -1;
      
      private var _useConfirmation:Boolean = false;
      
      protected var _showPlus:Boolean = false;
      
      private var _confirmLayer:ConfirmationInfoLayer;
      
      private var _confirmationContainer:Group;
      
      private var _justConfirmed:Boolean;
      
      private var _lastClickEvent:MouseEvent;
      
      public function ConfirmablePlusButton()
      {
         super();
      }
      
      override protected function clickHandler(param1:MouseEvent) : void
      {
         if(!this._showPlus && this.useConfirmation && this._priceToConfirm != -1 && !this._justConfirmed)
         {
            param1.stopImmediatePropagation();
            this._lastClickEvent = param1;
            if(this.confirmationContainer.numElements > 0)
            {
               this.confirmationContainer.removeAllElements();
            }
            if(this._confirmLayer)
            {
               this._confirmLayer.removeEventListener(ConfirmationInfoLayer.EVENT_ABORT_CLICKED,this.handleConfirmationAbort);
               this._confirmLayer.removeEventListener(ConfirmationInfoLayer.EVENT_CONFIRM_CLICKED,this.handleConfirmationClicked);
            }
            this._confirmLayer = new ConfirmationInfoLayer();
            this._confirmLayer.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleConfirmLayerReady);
            this._confirmLayer.addEventListener(ConfirmationInfoLayer.EVENT_ABORT_CLICKED,this.handleConfirmationAbort);
            this._confirmLayer.addEventListener(ConfirmationInfoLayer.EVENT_CONFIRM_CLICKED,this.handleConfirmationClicked);
            this._confirmLayer.verificationAmount = this._priceToConfirm;
            if(this.height > this._confirmLayer.minHeight)
            {
               this._confirmLayer.minHeight = this.height;
            }
            if(this.width > this._confirmLayer.minWidth)
            {
               this._confirmLayer.minWidth = this.width;
            }
            this._confirmLayer.visible = false;
            this.confirmationContainer.addElement(this._confirmLayer);
         }
         else
         {
            super.clickHandler(param1);
            this._justConfirmed = false;
            this._lastClickEvent = null;
         }
      }
      
      private function handleConfirmationClicked(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         this.cleanUpConfirmationLayer();
         this._justConfirmed = true;
         if(this._lastClickEvent)
         {
            dispatchEvent(this._lastClickEvent);
         }
      }
      
      private function handleConfirmationAbort(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         this.cleanUpConfirmationLayer();
      }
      
      private function cleanUpConfirmationLayer() : void
      {
         if(this._confirmLayer)
         {
            this._confirmLayer.removeEventListener(ConfirmationInfoLayer.EVENT_ABORT_CLICKED,this.handleConfirmationAbort);
            this._confirmLayer.removeEventListener(ConfirmationInfoLayer.EVENT_CONFIRM_CLICKED,this.handleConfirmationClicked);
         }
         if(this._confirmationContainer)
         {
            this._confirmationContainer.removeAllElements();
         }
      }
      
      private function handleConfirmLayerReady(param1:FlexEvent) : void
      {
         this._confirmLayer.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleConfirmLayerReady);
         var _loc2_:Point = new Point(this.width / 2,this.height / 2);
         _loc2_ = this.localToGlobal(_loc2_);
         _loc2_ = this.confirmationContainer.globalToLocal(_loc2_);
         this._confirmLayer.x = _loc2_.x - this._confirmLayer.width / 2;
         this._confirmLayer.y = _loc2_.y - this._confirmLayer.height / 2;
         this._confirmLayer.visible = true;
      }
      
      private function get confirmationContainer() : Group
      {
         var _loc1_:ApplicationMediator = null;
         if(!this._confirmationContainer)
         {
            _loc1_ = Facade.getInstance().retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
            this._confirmationContainer = _loc1_.component.mainView.confirmationGroup;
         }
         return this._confirmationContainer;
      }
      
      private function handleRemoved(param1:Event) : void
      {
         this.cleanUpConfirmationLayer();
      }
      
      public function set useConfirmation(param1:Boolean) : void
      {
         this._useConfirmation = param1;
         if(param1)
         {
            addEventListener(Event.REMOVED_FROM_STAGE,this.handleRemoved);
         }
      }
      
      public function get useConfirmation() : Boolean
      {
         if(this._useConfirmation)
         {
            return OptionsGlobalVariables.getInstance().showRCVerification;
         }
         return false;
      }
      
      public function set priceToConfirm(param1:Number) : void
      {
         if(RandomUtilities.isUnEqual(param1,this._priceToConfirm))
         {
            this._priceToConfirm = param1;
            this.cleanUpConfirmationLayer();
         }
      }
      
      public function get showPlus() : Boolean
      {
         return this._showPlus;
      }
      
      public function set showPlus(param1:Boolean) : void
      {
         this._showPlus = param1;
         if(this.plusIcon)
         {
            this.plusIcon.visible = param1;
            this.plusIcon.includeInLayout = param1;
         }
         invalidateProperties();
      }
   }
}

