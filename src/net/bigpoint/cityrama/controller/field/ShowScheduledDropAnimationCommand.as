package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ScheduledDropFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IAnimationSlot;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowScheduledDropAnimationCommand extends SimpleCommand
   {
      
      public function ShowScheduledDropAnimationCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc4_:ScheduledDropFieldObject = _loc2_.getBillboardById(param1.getBody().buildingId as Number) as ScheduledDropFieldObject;
         §§push(Boolean(_loc4_));
         if(!_loc6_)
         {
            var _temp_3:* = §§pop();
            §§push(_temp_3);
            if(_temp_3)
            {
               if(_loc7_ || Boolean(_loc3_))
               {
                  §§pop();
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     §§goto(addr0080);
                  }
                  §§goto(addr0092);
               }
            }
         }
         addr0080:
         if(_loc4_ is IAnimationSlot)
         {
            if(_loc7_ || Boolean(this))
            {
               addr0092:
               _loc4_.scheduledDropFieldObjectVo.playAnimation = true;
               if(_loc7_)
               {
                  _loc4_.invalidateIconStateManager();
                  if(!_loc6_)
                  {
                     _loc4_.invalidateAnimationSlotManager();
                     addr00ad:
                  }
                  var _loc5_:* = _loc4_.scheduledDropFieldObjectVo.tagType;
                  if(_loc7_ || Boolean(this))
                  {
                     §§push(ServerTagConstants.CHRISTMAS_TREE);
                     if(!(_loc6_ && Boolean(this)))
                     {
                        §§push(_loc5_);
                        if(!(_loc6_ && Boolean(param1)))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 §§push(0);
                                 if(_loc7_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr0178:
                                 §§push(1);
                                 if(_loc6_ && Boolean(param1))
                                 {
                                 }
                              }
                              §§goto(addr0198);
                           }
                           else
                           {
                              §§goto(addr0174);
                           }
                        }
                        addr0174:
                        §§goto(addr0172);
                     }
                     addr0172:
                     if(ServerTagConstants.CLIENT_OLYMPIC_STADIUM === _loc5_)
                     {
                        §§goto(addr0178);
                     }
                     else
                     {
                        §§push(2);
                     }
                     addr0198:
                     switch(§§pop())
                     {
                        case 0:
                           _loc3_.playChristmasTreeUnwrap();
                           if(_loc7_)
                           {
                           }
                           break;
                        case 1:
                           _loc3_.playOlympicTorchDrop();
                           if(_loc7_ || Boolean(param1))
                           {
                           }
                           break;
                        default:
                           _loc3_.playChristmasTreeUnwrap();
                           if(_loc6_ && Boolean(_loc2_))
                           {
                           }
                     }
                     §§goto(addr01a8);
                  }
                  §§goto(addr0178);
               }
            }
            §§goto(addr00ad);
         }
         addr01a8:
      }
   }
}

