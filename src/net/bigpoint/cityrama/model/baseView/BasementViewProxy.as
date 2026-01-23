package net.bigpoint.cityrama.model.baseView
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.ClickTaskNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class BasementViewProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "BasementViewProxy";
      
      private var _optionsMenuProxy:OptionsMenuProxy;
      
      private var _playfieldObjectProxy:PlayfieldObjectsProxy;
      
      private var _playfieldInteractiveProxy:PlayfieldInteractiveProxy;
      
      private var _isBaseViewEnabled:Boolean = false;
      
      private var _setByUserAxn:Boolean = false;
      
      public function BasementViewProxy(param1:Object = null)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         this._optionsMenuProxy = facade.retrieveProxy(OptionsMenuProxy.NAME) as OptionsMenuProxy;
         this._playfieldObjectProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         this._playfieldInteractiveProxy = facade.retrieveProxy(PlayfieldInteractiveProxy.NAME) as PlayfieldInteractiveProxy;
      }
      
      public function changeBaseViewForAll() : void
      {
         var _loc1_:BillboardObject = null;
         if(this._playfieldInteractiveProxy.oldClickObject != null)
         {
            this._playfieldInteractiveProxy.oldClickObject = null;
         }
         for each(_loc1_ in this._playfieldObjectProxy.billboardList)
         {
            if(!(_loc1_ is ExpansionFieldObject) && !(_loc1_ is BoulderFieldObject))
            {
               _loc1_.billboardObjectVo.isInBaseMode = !this._isBaseViewEnabled;
               _loc1_.invalidateBasementViewManager();
            }
         }
      }
      
      public function changeBaseViewForSingleBillboard(param1:BillboardObject) : void
      {
         param1.invalidateBasementViewManager();
      }
      
      public function get isBaseViewEnabled() : Boolean
      {
         return this._isBaseViewEnabled;
      }
      
      public function set isBaseViewEnabled(param1:Boolean) : void
      {
         this._isBaseViewEnabled = param1;
         if(!param1)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_HEATMAP);
         }
         else
         {
            sendNotification(ClickTaskNotificationConstants.BASEMENT_ENABLED);
         }
      }
      
      public function get setByUserAxn() : Boolean
      {
         return this._setByUserAxn;
      }
      
      public function set setByUserAxn(param1:Boolean) : void
      {
         this._setByUserAxn = param1;
      }
   }
}

