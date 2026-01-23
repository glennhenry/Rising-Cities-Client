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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:GlobalBalanceProxy = null;
         var _loc4_:CityImprovementProxy = null;
         var _loc5_:Number = NaN;
         var _loc6_:ImprovementVo = null;
         var _loc7_:ImprovementEfficiencyVo = null;
         var _loc2_:BillboardObject = param1.getBody() as BillboardObject;
         if(_loc2_ != null)
         {
            _loc3_ = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
            _loc4_ = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
            _loc2_.billboardObjectVo.happinessModifier = _loc3_.happinessOutputModifier;
            _loc2_.billboardObjectVo.energyModifier = _loc3_.energyOutputModifier;
            _loc5_ = 0;
            if(_loc4_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY))
            {
               _loc6_ = _loc4_.getImprovement(ServerTagConstants.CLIENT_BONUS_DAY);
               if(_loc6_)
               {
                  _loc7_ = _loc6_.getEfficiencyByTag(ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY);
                  if(_loc7_)
                  {
                     _loc5_ = _loc7_.value;
                  }
               }
            }
            _loc2_.billboardObjectVo.doubleBonusDayModifier = _loc5_;
         }
      }
   }
}

