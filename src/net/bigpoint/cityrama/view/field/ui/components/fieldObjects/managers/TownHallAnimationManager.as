package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.EmergencyConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.TownHallFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IAnimationSlotManager;
   
   public class TownHallAnimationManager extends AnimationSlotManager implements IAnimationSlotManager
   {
      
      private var _townhallFieldObjectVo:TownHallFieldObjectVo;
      
      public function TownHallAnimationManager()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function prepareAnimationSlotManager(param1:BillboardObjectVo, param2:SmartObjectContainer, param3:*) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(param1)))
         {
            this._townhallFieldObjectVo = TownHallFieldObjectVo(param1);
            if(!_loc4_)
            {
               super.prepareAnimationSlotManager(param1,param2,param3);
            }
         }
      }
      
      override protected function assetsLoaded(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            _assetsLoaded = true;
            if(!_loc2_)
            {
               this.invalidateAnimationSlotManager();
            }
         }
      }
      
      override public function invalidateAnimationSlotManager() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            if(_assetsLoaded)
            {
               addr009d:
               var _loc1_:* = this._townhallFieldObjectVo.fakeAnimationForQuest;
               if(_loc3_ || Boolean(this))
               {
                  §§push(EmergencyConstants.EMERGENCY_STATUS_STARTED);
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(_loc1_);
                     if(_loc3_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc2_)
                           {
                              §§push(0);
                              if(_loc2_)
                              {
                              }
                           }
                           else
                           {
                              addr0103:
                              §§push(1);
                              if(_loc3_ || _loc3_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(EmergencyConstants.EMERGENCY_INPROGRESS);
                           if(!_loc2_)
                           {
                              addr00ea:
                              §§push(_loc1_);
                              if(_loc3_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr0103);
                                    }
                                    else
                                    {
                                       addr0121:
                                       §§push(2);
                                       if(_loc2_)
                                       {
                                       }
                                    }
                                    §§goto(addr0138);
                                 }
                                 else
                                 {
                                    §§goto(addr011d);
                                 }
                              }
                              addr011d:
                              §§goto(addr011c);
                           }
                           addr011c:
                           if(EmergencyConstants.EMERGENCY_STATUS_SUCCESS === _loc1_)
                           {
                              §§goto(addr0121);
                           }
                           else
                           {
                              §§push(3);
                           }
                           §§goto(addr0138);
                        }
                        addr0138:
                        switch(§§pop())
                        {
                           case 0:
                              addAnimation(animationForEmergencyStarted);
                              if(_loc2_ && Boolean(_loc1_))
                              {
                              }
                              break;
                           case 1:
                              addAnimation(animationForEmergencyInProgress);
                              if(_loc3_)
                              {
                              }
                              break;
                           case 2:
                              addAnimation(animationForEmergencyReward);
                              if(_loc2_)
                              {
                              }
                              break;
                           default:
                              removeCurrentAnimation();
                              if(_loc3_ || Boolean(_loc1_))
                              {
                              }
                        }
                        §§goto(addr014b);
                     }
                     §§goto(addr011d);
                  }
                  §§goto(addr00ea);
               }
               §§goto(addr0121);
            }
            addr014b:
            return;
         }
         §§goto(addr009d);
      }
   }
}

