package net.bigpoint.cityrama.view.boosterpackstore
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.BoosterpackDataGrid;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class BoosterpackListMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "BoosterpackListMediator";
      
      private var _component:BoosterpackDataGrid;
      
      private var _data:Vector.<BoosterpackVo>;
      
      private var _featureProxy:FeatureProxy;
      
      public function BoosterpackListMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.prepareProxies();
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this._component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this._component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
         if(this._component && this.container.contentGroup && this._component.parent == this.container.contentGroup)
         {
            this.container.contentGroup.removeElement(this._component);
         }
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _loc2_:Number = param1.cid;
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         _loc3_.x += param1.target.width / 2;
         sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
            "cid":_loc2_,
            "lineId":UserInterfaceInfoLayerMediator.LINE_AUTO_SELECT,
            "pt":_loc3_,
            "type":UIInfolayerDispatcherEvent.CALLER_TYPE_IMPROVEMENT_BOOSTER
         },NAME);
      }
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      private function prepareProxies() : void
      {
         this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
      }
      
      private function setInitialValues() : void
      {
         if(!this._component)
         {
            this._component = new BoosterpackDataGrid();
         }
         this._component.data = this._data;
         if(!this._featureProxy.boosterPackFeatureUnlocked)
         {
            this._component.locked(this._featureProxy.boosterPackFeatureUnlockLevel);
         }
         this.container.contentGroup.addElement(this._component);
         if(facade.hasMediator(UserInterfaceInfoLayerMediator.NAME + NAME))
         {
            facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + NAME);
         }
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this._component.uiInfolayerAlignmentLine,this._component.uiInfolayerAlignmentLine2],this));
         this._component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this._component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
      }
      
      public function get container() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is Vector.<BoosterpackVo>)
         {
            this._data = param1 as Vector.<BoosterpackVo>;
            this.setInitialValues();
         }
      }
      
      override public function getMediatorName() : String
      {
         return BoosterpackListMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
      }
   }
}

