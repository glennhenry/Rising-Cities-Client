package net.bigpoint.cityrama.controller.mastery
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusTraitGroupVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryBonusDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryBonusGroupDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.mastery.MasteryTraitSelectionMediator;
   import net.bigpoint.cityrama.view.mastery.components.MasteryTraitSelectionLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenMasteryTraitSelectionLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenMasteryTraitSelectionLayerCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc5_:ConfigMasteryBonusGroupDTO = null;
         var _loc6_:PopupSettingsVo = null;
         var _loc7_:MasteryBonusTraitGroupVo = null;
         var _loc2_:Number = param1.getBody() as Number;
         var _loc3_:ConfigMasteryBonusDTO = (facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy).config.masteryBoni[_loc2_];
         if(_loc11_)
         {
            if(_loc3_ == null)
            {
               if(_loc11_)
               {
                  §§goto(addr005b);
               }
            }
            var _loc4_:Vector.<MasteryBonusTraitGroupVo> = new Vector.<MasteryBonusTraitGroupVo>();
            for each(_loc5_ in _loc3_.buffs)
            {
               if(_loc5_.selectionId != 0)
               {
                  _loc7_ = new MasteryBonusTraitGroupVo();
                  _loc7_.bonusCollection = ConfigFactory.getMasteryBonusVosFromConfigMasteryBonusGroupDTO(_loc5_,"","");
                  if(_loc11_ || Boolean(this))
                  {
                     _loc4_.push(_loc7_);
                  }
               }
            }
            _loc6_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
            _loc6_.modal = true;
            if(!_loc10_)
            {
               _loc6_.viewClass = MasteryTraitSelectionLayer;
               if(!(_loc10_ && Boolean(this)))
               {
                  _loc6_.mediatorClass = MasteryTraitSelectionMediator;
                  if(_loc11_)
                  {
                     _loc6_.mediatorName = MasteryTraitSelectionMediator.NAME;
                     if(!_loc10_)
                     {
                        _loc6_.data = _loc4_;
                        if(!(_loc10_ && Boolean(_loc3_)))
                        {
                           addr0148:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc6_);
                        }
                        §§goto(addr0154);
                     }
                  }
                  §§goto(addr0148);
               }
            }
            addr0154:
            return;
         }
         addr005b:
      }
   }
}

