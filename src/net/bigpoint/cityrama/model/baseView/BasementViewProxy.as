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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "BasementViewProxy";
      }
      
      private var _optionsMenuProxy:OptionsMenuProxy;
      
      private var _playfieldObjectProxy:PlayfieldObjectsProxy;
      
      private var _playfieldInteractiveProxy:PlayfieldInteractiveProxy;
      
      private var _isBaseViewEnabled:Boolean = false;
      
      private var _setByUserAxn:Boolean = false;
      
      public function BasementViewProxy(param1:Object = null)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this._optionsMenuProxy = facade.retrieveProxy(OptionsMenuProxy.NAME) as OptionsMenuProxy;
            if(!(_loc1_ && _loc2_))
            {
               §§goto(addr0052);
            }
            §§goto(addr0068);
         }
         addr0052:
         this._playfieldObjectProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         if(_loc2_)
         {
            addr0068:
            this._playfieldInteractiveProxy = facade.retrieveProxy(PlayfieldInteractiveProxy.NAME) as PlayfieldInteractiveProxy;
         }
      }
      
      public function changeBaseViewForAll() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:BillboardObject = null;
         if(!_loc5_)
         {
            §§push(this._playfieldInteractiveProxy);
            if(_loc4_ || Boolean(_loc1_))
            {
               if(§§pop().oldClickObject != null)
               {
                  if(_loc4_ || _loc2_)
                  {
                     addr004c:
                     this._playfieldInteractiveProxy.oldClickObject = null;
                     addr0048:
                  }
               }
               var _loc2_:int = 0;
               var _loc3_:* = this._playfieldObjectProxy.billboardList;
               for each(_loc1_ in _loc3_)
               {
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     §§push(_loc1_ is ExpansionFieldObject);
                     if(_loc4_)
                     {
                        §§push(!§§pop());
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           var _temp_5:* = §§pop();
                           §§push(_temp_5);
                           if(_temp_5)
                           {
                              if(!_loc5_)
                              {
                                 addr00a7:
                                 §§pop();
                                 if(!_loc5_)
                                 {
                                    addr00ba:
                                    §§push(_loc1_ is BoulderFieldObject);
                                    if(!_loc5_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(_loc5_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    §§push(_loc1_.billboardObjectVo);
                                    §§push(this._isBaseViewEnabled);
                                    if(!_loc5_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    §§pop().isInBaseMode = §§pop();
                                    if(_loc5_ && Boolean(_loc1_))
                                    {
                                       continue;
                                    }
                                 }
                                 addr00f7:
                                 _loc1_.invalidateBasementViewManager();
                                 continue;
                              }
                           }
                        }
                        §§goto(addr00ba);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr00f7);
               }
               return;
            }
            §§goto(addr004c);
         }
         §§goto(addr0048);
      }
      
      public function changeBaseViewForSingleBillboard(param1:BillboardObject) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            param1.invalidateBasementViewManager();
         }
      }
      
      public function get isBaseViewEnabled() : Boolean
      {
         return this._isBaseViewEnabled;
      }
      
      public function set isBaseViewEnabled(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._isBaseViewEnabled = param1;
            if(_loc3_)
            {
               if(!param1)
               {
                  if(_loc3_)
                  {
                     sendNotification(ApplicationNotificationConstants.HIDE_HEATMAP);
                     if(_loc2_ && _loc3_)
                     {
                     }
                  }
               }
               else
               {
                  sendNotification(ClickTaskNotificationConstants.BASEMENT_ENABLED);
               }
            }
         }
      }
      
      public function get setByUserAxn() : Boolean
      {
         return this._setByUserAxn;
      }
      
      public function set setByUserAxn(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._setByUserAxn = param1;
         }
      }
   }
}

