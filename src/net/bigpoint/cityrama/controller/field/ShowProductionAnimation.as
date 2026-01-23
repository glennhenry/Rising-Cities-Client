package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IAnimationSlot;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowProductionAnimation extends SimpleCommand
   {
      
      public function ShowProductionAnimation()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:IAnimationSlot = null;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc4_:ProductionFieldObject = _loc2_.getBillboardById(param1.getBody().buildingId as Number) as ProductionFieldObject;
         §§push(_loc4_.productionFieldObjectVo);
         if(_loc7_ || Boolean(this))
         {
            §§pop().playProductionAinimation = true;
            if(_loc7_)
            {
               addr0073:
               _loc4_.productionFieldObjectVo.playEventAnimation = param1.getBody().isEvent;
               if(_loc7_)
               {
                  if(_loc4_ is IAnimationSlot)
                  {
                     addr009a:
                     _loc5_ = _loc4_ as IAnimationSlot;
                     if(_loc7_)
                     {
                        if(_loc4_.productionFieldObjectVo.produceAbleGoods[0].groupType)
                        {
                           addr00e7:
                           var _loc6_:* = _loc4_.productionFieldObjectVo.produceAbleGoods[0].groupType;
                           if(!_loc8_)
                           {
                              §§push(ServerTagConstants.GOOD_CONSTRUCTION);
                              if(!_loc8_)
                              {
                                 if(§§pop() === _loc6_)
                                 {
                                    if(!_loc8_)
                                    {
                                       §§push(0);
                                       if(_loc7_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr013b:
                                       §§push(1);
                                       if(_loc7_)
                                       {
                                       }
                                    }
                                    §§goto(addr0153);
                                 }
                                 else
                                 {
                                    §§goto(addr0135);
                                 }
                              }
                              addr0135:
                              if(ServerTagConstants.GOOD_NORMAL === _loc6_)
                              {
                                 §§goto(addr013b);
                              }
                              else
                              {
                                 §§push(2);
                              }
                              addr0153:
                              switch(§§pop())
                              {
                                 case 0:
                                    break;
                                 case 1:
                                    _loc3_.playProductionBox();
                                    if(_loc8_ && Boolean(_loc3_))
                                    {
                                    }
                              }
                              §§goto(addr0171);
                           }
                           §§goto(addr013b);
                        }
                        addr0171:
                        _loc5_.invalidateAnimationSlotManager();
                        §§goto(addr0178);
                     }
                     §§goto(addr00e7);
                  }
                  addr0178:
                  return;
               }
            }
            §§goto(addr009a);
         }
         §§goto(addr0073);
      }
   }
}

