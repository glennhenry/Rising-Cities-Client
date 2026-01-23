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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc1_)
      {
         NAME = "BoosterpackListMediator";
      }
      
      private var _component:BoosterpackDataGrid;
      
      private var _data:Vector.<BoosterpackVo>;
      
      private var _featureProxy:FeatureProxy;
      
      public function BoosterpackListMediator(param1:Object)
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.onRegister();
            if(_loc1_)
            {
               addr0027:
               this.prepareProxies();
            }
            return;
         }
         §§goto(addr0027);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.onRemove();
            if(_loc2_)
            {
               addr0028:
               §§push(this._component);
               if(_loc2_ || _loc2_)
               {
                  §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                  if(_loc2_)
                  {
                     §§pop().removeEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                     if(_loc2_)
                     {
                        §§push(this._component);
                        if(_loc2_ || _loc2_)
                        {
                           addr0068:
                           §§pop().removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr007c);
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr00f8);
                  }
                  §§goto(addr0068);
               }
               §§goto(addr008f);
            }
            addr007c:
            §§push(this._component);
            if(_loc2_)
            {
               addr008f:
               §§push(§§pop());
               if(_loc2_ || Boolean(this))
               {
                  var _temp_7:* = §§pop();
                  §§push(_temp_7);
                  §§push(_temp_7);
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§pop();
                           if(_loc2_ || _loc1_)
                           {
                              addr00c3:
                              §§push(this.container);
                              if(!(_loc1_ && Boolean(this)))
                              {
                                 §§push(§§pop().contentGroup);
                                 if(!_loc1_)
                                 {
                                    addr00de:
                                    var _temp_11:* = §§pop();
                                    addr00df:
                                    §§push(_temp_11);
                                    if(_temp_11)
                                    {
                                       if(_loc2_)
                                       {
                                          addr00e8:
                                          §§pop();
                                          if(_loc2_)
                                          {
                                             §§goto(addr0107);
                                          }
                                          §§goto(addr0118);
                                       }
                                    }
                                 }
                                 addr0107:
                                 §§goto(addr00f8);
                              }
                              §§goto(addr011c);
                           }
                           addr00f8:
                           §§goto(addr00fc);
                        }
                        §§goto(addr0107);
                     }
                     §§goto(addr00de);
                  }
                  §§goto(addr00df);
               }
               §§goto(addr00e8);
            }
            addr00fc:
            if(this._component.parent == this.container.contentGroup)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr011c:
                  this.container.contentGroup.removeElement(this._component);
                  addr0118:
               }
            }
            return;
         }
         §§goto(addr0028);
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1.cid);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(_loc4_)
         {
            _loc3_.x += param1.target.width / 2;
            if(_loc4_ || Boolean(this))
            {
               addr006d:
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":UserInterfaceInfoLayerMediator.LINE_AUTO_SELECT,
                  "pt":_loc3_,
                  "type":UIInfolayerDispatcherEvent.CALLER_TYPE_IMPROVEMENT_BOOSTER
               },NAME);
            }
            return;
         }
         §§goto(addr006d);
      }
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function prepareProxies() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         }
      }
      
      private function setInitialValues() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this._component);
            if(_loc1_ || Boolean(this))
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     this._component = new BoosterpackDataGrid();
                     if(!(_loc2_ && _loc2_))
                     {
                        addr004f:
                        §§push(this._component);
                        if(_loc1_ || _loc1_)
                        {
                           §§pop().data = this._data;
                           if(_loc1_)
                           {
                              if(!this._featureProxy.boosterPackFeatureUnlocked)
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr0084:
                                    §§push(this._component);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§pop().locked(this._featureProxy.boosterPackFeatureUnlockLevel);
                                       if(!_loc2_)
                                       {
                                          §§goto(addr00af);
                                       }
                                       §§goto(addr016d);
                                    }
                                    §§goto(addr0155);
                                 }
                                 §§goto(addr016d);
                              }
                              addr00af:
                              this.container.contentGroup.addElement(this._component);
                              if(_loc1_ || _loc1_)
                              {
                                 addr00cb:
                                 if(facade.hasMediator(UserInterfaceInfoLayerMediator.NAME + NAME))
                                 {
                                    if(!_loc2_)
                                    {
                                       facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + NAME);
                                       if(!_loc2_)
                                       {
                                          §§goto(addr00f5);
                                       }
                                    }
                                    §§goto(addr013a);
                                 }
                                 addr00f5:
                                 facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this._component.uiInfolayerAlignmentLine,this._component.uiInfolayerAlignmentLine2],this));
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr013a:
                                    §§push(this._component);
                                    if(_loc1_ || _loc1_)
                                    {
                                       addr0155:
                                       §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                                       if(_loc1_)
                                       {
                                          §§pop().addEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                                          if(_loc1_)
                                          {
                                             addr0177:
                                             this._component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
                                             addr0171:
                                             addr016d:
                                          }
                                          §§goto(addr017e);
                                       }
                                       §§goto(addr0177);
                                    }
                                    §§goto(addr0171);
                                 }
                                 §§goto(addr017e);
                              }
                              addr017e:
                              return;
                           }
                           §§goto(addr013a);
                        }
                        §§goto(addr0155);
                     }
                     §§goto(addr013a);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr004f);
            }
            §§goto(addr0155);
         }
         §§goto(addr00cb);
      }
      
      public function get container() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 is Vector.<BoosterpackVo>)
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  this._data = param1 as Vector.<BoosterpackVo>;
                  if(!_loc2_)
                  {
                     addr0053:
                     this.setInitialValues();
                  }
                  §§goto(addr0059);
               }
               §§goto(addr0053);
            }
         }
         addr0059:
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

