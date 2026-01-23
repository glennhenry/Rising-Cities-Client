package net.bigpoint.cityrama.view.miniLayer.components
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ProductionCancelMinilayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ProductionCancelMinilayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         NAME = "ProductionCancelMinilayerMediator";
      }
      
      private var _pfoVo:ProductionFieldObjectVo;
      
      public function ProductionCancelMinilayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param2))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.onRegister();
            if(!(_loc2_ && Boolean(this)))
            {
               addr0039:
               this.setLayerData();
               if(!(_loc2_ && Boolean(this)))
               {
                  this.addListener();
               }
            }
            return;
         }
         §§goto(addr0039);
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(!(_loc1_ && Boolean(this)))
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(_loc2_)
               {
                  §§push(this.component);
                  if(!_loc1_)
                  {
                     addr0053:
                     §§push(QueryMiniLayer.CONFIRM_CLICKED);
                     if(!_loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.onConfirm);
                        if(!_loc1_)
                        {
                           addr0074:
                           this.component.addEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
                           addr006e:
                           addr006b:
                        }
                        §§goto(addr007b);
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr006b);
            }
            §§goto(addr0053);
         }
         addr007b:
      }
      
      private function setLayerData() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:QueryMiniLayerVo = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_QUERY);
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.title = LocaUtils.getString("rcl.miniLayer.productioncancel","rcl.miniLayer.productioncancel.title");
            if(!_loc3_)
            {
               _loc1_.layerText = LocaUtils.getString("rcl.miniLayer.productioncancel","rcl.miniLayer.productioncancel.flavour");
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.confirmBtnLabel = LocaUtils.getString("rcl.miniLayer.productioncancel","rcl.miniLayer.productioncancel.buttonOk");
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0095:
                     _loc1_.denyBtnLabel = LocaUtils.getString("rcl.miniLayer.productioncancel","rcl.miniLayer.productioncancel.buttonAbort");
                     if(!(_loc3_ && Boolean(this)))
                     {
                        this.component.data = _loc1_;
                     }
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr0095);
            }
            addr00b8:
            return;
         }
         §§goto(addr0095);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1)
            {
               if(!_loc3_)
               {
                  param1.stopPropagation();
                  if(_loc2_ || _loc2_)
                  {
                     addr0040:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                  }
                  return;
               }
            }
         }
         §§goto(addr0040);
      }
      
      private function onConfirm(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.stopPropagation();
            if(!(_loc3_ && _loc3_))
            {
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_CANCEL_PRODUCTION,this._pfoVo);
               if(!_loc3_)
               {
                  addr004a:
                  this.handleClose();
               }
               §§goto(addr004f);
            }
            §§goto(addr004a);
         }
         addr004f:
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            this.removeListener();
            if(!_loc1_)
            {
               addr0029:
               super.onRemove();
            }
            return;
         }
         §§goto(addr0029);
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.component);
            if(_loc1_ || _loc1_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(_loc1_ || Boolean(this))
               {
                  addr0050:
                  §§push(this.component);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr006a:
                     §§push(QueryMiniLayer.CONFIRM_CLICKED);
                     if(_loc1_)
                     {
                        §§pop().removeEventListener(§§pop(),this.onConfirm);
                        if(_loc1_ || Boolean(this))
                        {
                           addr0093:
                           this.component.removeEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
                           addr008d:
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr008d);
               }
               addr009a:
               return;
            }
            §§goto(addr006a);
         }
         §§goto(addr0050);
      }
      
      public function get component() : QueryMiniLayer
      {
         return super.viewComponent as QueryMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1 is ProductionFieldObjectVo)
            {
               if(_loc3_)
               {
                  addr0026:
                  this._pfoVo = ProductionFieldObjectVo(param1);
               }
            }
            return;
         }
         §§goto(addr0026);
      }
   }
}

