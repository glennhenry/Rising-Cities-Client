package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.assistants.AssistViewProxy;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolOptionVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.PatrolOptionsItemRenderer;
   import net.bigpoint.cityrama.view.miniLayer.ui.PatrolMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class PatrolMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "PatrolMiniLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         NAME = "PatrolMiniLayerMediator";
      }
      
      private var _data:Vector.<PatrolOptionVo>;
      
      public function PatrolMiniLayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this.component);
            if(!(_loc1_ && Boolean(this)))
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(_loc2_ || Boolean(this))
               {
                  §§push(this.component);
                  if(!_loc1_)
                  {
                     addr0063:
                     §§push(PatrolOptionsItemRenderer.PATROL_SELECTED);
                     if(!_loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.onHire);
                        if(_loc2_ || _loc1_)
                        {
                           addr008c:
                           this.component.addEventListener(PatrolOptionsItemRenderer.OPEN_TREASURY,this.onOpenTreasury);
                           addr0086:
                           addr0083:
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0086);
               }
               addr0094:
               return;
            }
            §§goto(addr0063);
         }
         §§goto(addr0083);
      }
      
      private function onHire(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            param1.stopPropagation();
            if(!(_loc2_ && _loc2_))
            {
               if(param1.target is PatrolOptionsItemRenderer)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0057:
                     if(PatrolOptionsItemRenderer(param1.target).assistConfigId != -1)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr0070);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr00bf);
                  }
                  addr0070:
                  StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0099:
                     facade.sendNotification(ApplicationNotificationConstants.BUY_ASSIST,PatrolOptionsItemRenderer(param1.target).assistConfigId);
                     if(_loc3_ || Boolean(this))
                     {
                        addr00bf:
                        this.handleClose(null);
                     }
                  }
                  return;
               }
               §§goto(addr00bf);
            }
         }
         §§goto(addr0057);
      }
      
      private function onOpenTreasury(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            param1.stopPropagation();
            if(_loc2_ || _loc3_)
            {
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.component);
            if(!_loc2_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(this.component);
                  if(_loc1_)
                  {
                     §§push(PatrolOptionsItemRenderer.PATROL_SELECTED);
                     if(!_loc2_)
                     {
                        §§pop().removeEventListener(§§pop(),this.onHire);
                        if(_loc1_)
                        {
                           addr007b:
                           this.component.removeEventListener(PatrolOptionsItemRenderer.OPEN_TREASURY,this.onOpenTreasury);
                           addr0075:
                           addr0072:
                           if(!(_loc2_ && _loc2_))
                           {
                              super.onRemove();
                           }
                        }
                        return;
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0072);
            }
            §§goto(addr0075);
         }
         §§goto(addr0072);
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 is Vector.<PatrolOptionVo>)
            {
               if(!_loc2_)
               {
                  this._data = param1 as Vector.<PatrolOptionVo>;
                  if(_loc3_)
                  {
                     this.component.data = this._data;
                  }
               }
            }
         }
      }
      
      public function get component() : PatrolMiniLayer
      {
         return super.viewComponent as PatrolMiniLayer;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:AssistViewProxy = null;
         var _loc3_:* = param1.getName();
         if(_loc5_ || Boolean(_loc2_))
         {
            if(ApplicationNotificationConstants.REALCURRENCY_CHANGED === _loc3_)
            {
               addr0083:
               §§push(0);
               if(_loc4_ && Boolean(_loc3_))
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  _loc2_ = AssistViewProxy(facade.retrieveProxy(AssistViewProxy.NAME));
                  if(_loc5_)
                  {
                     this.setData(_loc2_.getPatrolOptions());
                  }
            }
            return;
         }
         §§goto(addr0083);
      }
   }
}

