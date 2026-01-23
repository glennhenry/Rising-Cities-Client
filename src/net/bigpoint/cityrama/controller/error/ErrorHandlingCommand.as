package net.bigpoint.cityrama.controller.error
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.init.SystemManager;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ErrorHandlingCommand extends SimpleCommand
   {
      
      private static const ERROR_LEVEL_FATAL:int = 1;
      
      private const ERROR_LEVEL_FATAL_USER_DATA_CORRUPT:int = 2;
      
      private var _errorMessage:String;
      
      public function ErrorHandlingCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.ERROR_BUILDING_DTO_CORRUPT:
               this.handleCorruptBuildingDTO(BuildingDTO(param1.getBody()));
         }
      }
      
      private function handleCorruptBuildingDTO(param1:BuildingDTO) : void
      {
         var _loc3_:Object = null;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         var _loc2_:PlayerProxy = super.facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         if(param1.corruptServerObject.ph)
         {
            for each(_loc3_ in param1.corruptServerObject.ph)
            {
               for each(_loc5_ in param1.config.activePhases)
               {
                  if(_loc5_.phaseId == _loc3_.pid)
                  {
                     _loc6_ = true;
                  }
               }
               for each(_loc5_ in param1.config.constructionPhases)
               {
                  if(_loc5_.phaseId == _loc3_.pid)
                  {
                     _loc6_ = true;
                  }
               }
               for each(_loc5_ in param1.config.destructionPhases)
               {
                  if(_loc5_.phaseId == _loc3_.pid)
                  {
                     _loc6_ = true;
                  }
               }
               if(!_loc6_)
               {
                  if(SystemManager.rawStage.loaderInfo.parameters.uid == null)
                  {
                     _loc7_ = -1;
                  }
                  else
                  {
                     _loc7_ = Number(SystemManager.rawStage.loaderInfo.parameters.uid);
                  }
                  this.dispatchError(this.ERROR_LEVEL_FATAL_USER_DATA_CORRUPT,"Uid:" + _loc7_ + " ConfigPlayfieldItemId:" + param1.config.id + " BuildingId: " + param1.id + " config Phase id: " + _loc3_.pid);
               }
            }
         }
      }
      
      private function dispatchError(param1:int, param2:String) : void
      {
         this._errorMessage = param2;
         switch(param1)
         {
            case this.ERROR_LEVEL_FATAL_USER_DATA_CORRUPT:
               TweenMax.delayedCall(2,this.openFatal);
               facade.registerCommand(ApplicationNotificationConstants.PHP_SEND_FATAL_ERROR,SendFatalErrorToPHPCommand);
         }
      }
      
      private function openFatal() : void
      {
         sendNotification(ApplicationNotificationConstants.PHP_SEND_FATAL_ERROR,{
            "subject":"Error 37",
            "body":this._errorMessage
         });
         sendNotification(MiniLayerConstants.OPEN_MINI_FATAL_ERROR);
      }
   }
}

