package net.bigpoint.cityrama.controller.floater
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.improvement.CityImprovementProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementEfficiencyVo;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PrepareBillboardObjectFloaterManagerCommand extends SimpleCommand implements ICommand
   {
      
      public function PrepareBillboardObjectFloaterManagerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:GlobalBalanceProxy = null;
         var _loc4_:CityImprovementProxy = null;
         var _loc5_:* = NaN;
         var _loc6_:ImprovementVo = null;
         var _loc7_:ImprovementEfficiencyVo = null;
         var _loc2_:BillboardObject = param1.getBody() as BillboardObject;
         if(!(_loc9_ && Boolean(param1)))
         {
            if(_loc2_ != null)
            {
               addr004f:
               _loc3_ = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
               _loc4_ = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
               if(_loc8_ || Boolean(_loc3_))
               {
                  §§push(_loc2_.billboardObjectVo);
                  if(_loc8_ || Boolean(_loc2_))
                  {
                     §§push(_loc3_.happinessOutputModifier);
                     if(_loc8_ || Boolean(param1))
                     {
                        §§pop().happinessModifier = §§pop();
                        if(!_loc9_)
                        {
                           §§push(_loc2_.billboardObjectVo);
                           if(!(_loc9_ && Boolean(_loc3_)))
                           {
                              §§push(_loc3_.energyOutputModifier);
                              if(_loc8_)
                              {
                                 §§pop().energyModifier = §§pop();
                                 if(_loc8_)
                                 {
                                    _loc5_ = 0;
                                    if(!(_loc9_ && Boolean(_loc3_)))
                                    {
                                       addr00f1:
                                       if(_loc4_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY))
                                       {
                                          if(_loc8_ || Boolean(param1))
                                          {
                                             addr010e:
                                             _loc6_ = _loc4_.getImprovement(ServerTagConstants.CLIENT_BONUS_DAY);
                                             if(_loc6_)
                                             {
                                                _loc7_ = _loc6_.getEfficiencyByTag(ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY);
                                                if(_loc7_)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      §§push(_loc7_.value);
                                                      if(!(_loc9_ && Boolean(param1)))
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                      _loc5_ = §§pop();
                                                   }
                                                }
                                             }
                                             addr0165:
                                             _loc2_.billboardObjectVo.doubleBonusDayModifier = _loc5_;
                                             addr0160:
                                             addr0163:
                                          }
                                          §§goto(addr0168);
                                       }
                                       §§goto(addr0160);
                                    }
                                 }
                                 §§goto(addr010e);
                              }
                              §§goto(addr0165);
                           }
                           §§goto(addr0163);
                        }
                        §§goto(addr00f1);
                     }
                     §§goto(addr0165);
                  }
                  §§goto(addr0163);
               }
               §§goto(addr010e);
            }
            addr0168:
            return;
         }
         §§goto(addr004f);
      }
   }
}

