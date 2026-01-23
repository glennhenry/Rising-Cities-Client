package net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller
{
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.controller.newsscreen.ServerMessagePlayerNewsscreenUpdateCommand;
   import net.bigpoint.cityrama.controller.server.ServerConnectionClosed;
   import net.bigpoint.cityrama.controller.server.ServerMarketOfferSoldCommand;
   import net.bigpoint.cityrama.controller.server.ServerMessagePlayerLevelUpSuccessCommand;
   import net.bigpoint.cityrama.controller.server.ServerMessagePlayfieldBuildingConstructionPhaseupdateCommand;
   import net.bigpoint.cityrama.controller.server.ServerMessagePlayfieldBuildingHarvestphaseUpdateCommand;
   import net.bigpoint.cityrama.controller.server.ServerMessagePlayfieldDecorationDeleteFailed;
   import net.bigpoint.cityrama.controller.server.ServerMessageResourcesCommand;
   import net.bigpoint.cityrama.controller.server.ServerMessageTimeUpdateCommand;
   import net.bigpoint.cityrama.controller.server.ServerPMSNewMessageCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessageConnectionIdleClose;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessageCreateBuildingFailedCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessageIllegalParamFailCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePaymentPackBookedCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePaymentPackUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayerFeatureUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldBoulderCreatedCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldBoulderDeletedCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldBoulderDestructionPhaseUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldBoulderPhaseStartedCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldBuildingConstructionFinishedCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldBuildingNewCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldBuildingPhaseNewCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldBuildingRandomDropCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldBuildingResidentSwapSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldBuildingUpgradePhaseUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldCreateDecorationSuccess;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldCreateGroundFailed;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldCreateGroundSuccess;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldDecorationCreateFailed;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldDecorationDeleteSuccess;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldDecorationMoveFailed;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldDecorationMoveSuccess;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldDeleteGroundFailed;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldDestroyGroundSuccess;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldItemBoostPhaseUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldMoveGroundFailed;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldMoveGroundSuccess;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldNeedConsumedCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldProductionCancelFailedCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldProductionCancelSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldProductionFailedCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldProductionHarvestFailedCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldProductionHarvestSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldProductionPhaseupdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldStackNeedSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldUpdateGroundSuccess;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessageSwitchFeatureActionCommand;
   import net.bigpoint.cityrama.controller.server.messages.boosterpack.server.ServerMessageBoosterRewardSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.cinema.server.ServerMessageCinemaUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.cityTreasury.ServerMessagePlayerPaymentUpsellUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.cityWheel.server.ServerMessageCityWheelUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.common.ServerMessageRentCollectorSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.education.ServerMessageEducationExtendFailCommand;
   import net.bigpoint.cityrama.controller.server.messages.education.ServerMessageEducationExtendSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.education.ServerMessageEducationFinishedCommand;
   import net.bigpoint.cityrama.controller.server.messages.education.ServerMessageEducationStackCreatedCommand;
   import net.bigpoint.cityrama.controller.server.messages.education.ServerMessageProfessionalAssignedSuccess;
   import net.bigpoint.cityrama.controller.server.messages.education.ServerMessageProfessionalAttributeChangeFailCommand;
   import net.bigpoint.cityrama.controller.server.messages.education.ServerMessageProfessionalAttributeChangeSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.education.ServerMessageStartEducationFailCommand;
   import net.bigpoint.cityrama.controller.server.messages.education.ServerMessageStartEducationSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.education.ServernMessageProfessionalSpecializationChangedCommand;
   import net.bigpoint.cityrama.controller.server.messages.emergency.server.ServerMessageEmergencyFinishCommand;
   import net.bigpoint.cityrama.controller.server.messages.emergency.server.ServerMessageEmergencyUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.friend.ServerMessageFriendsUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.friend.ServerMessageSlayerInviteFriendFailedCommand;
   import net.bigpoint.cityrama.controller.server.messages.friend.ServerMessageSlayerInviteFriendSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.friend.ServerMessageSlayerRequestFriendFailedCommand;
   import net.bigpoint.cityrama.controller.server.messages.improvements.server.ServerMessageImprovementBoosterRewardSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.improvements.server.ServerMessagePlayfieldItemImprovementDeletedCommand;
   import net.bigpoint.cityrama.controller.server.messages.improvements.server.ServerMessagePlayfieldItemImprovementEquippedCommand;
   import net.bigpoint.cityrama.controller.server.messages.improvements.server.ServerMessagePlayfieldItemImprovementUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.inventory.server.ServerMessageExpandInventoryBagSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.inventory.server.ServerMessageInventoryUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.mastery.server.ServerMessageMasteryBonusUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.mastery.server.ServerMessageMasteryChallengeUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.move.ServerMessagePlayfieldBuildingMoveFailedCommand;
   import net.bigpoint.cityrama.controller.server.messages.move.ServerMessagePlayfieldBuildingMoveSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.move.ServerMessagePlayfieldItemActiveStateChangedCommand;
   import net.bigpoint.cityrama.controller.server.messages.playfieldExpand.ServerMessagePlayfieldExpandFailed;
   import net.bigpoint.cityrama.controller.server.messages.playfieldExpand.ServerMessagePlayfieldExpandSuccess;
   import net.bigpoint.cityrama.controller.server.messages.playfieldExpand.ServerMessagePlayfieldSwitchSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.professionals.server.ServerMessageProfessionalChangeSuccess;
   import net.bigpoint.cityrama.controller.server.messages.professionals.server.ServerMessageProfessionalCreateSuccess;
   import net.bigpoint.cityrama.controller.server.messages.professionals.server.ServerMessageProfessionalDismissSuccess;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ControllerPrepCommandServerClientCommunication extends SimpleCommand
   {
      
      public function ControllerPrepCommandServerClientCommunication()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_TIMESTAMP_RESPONSE,ServerMessageTimeUpdateCommand);
            if(!(_loc3_ && Boolean(this)))
            {
               facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PMS_PUSH_NEW_MESSAGE,ServerPMSNewMessageCommand);
               if(_loc2_ || _loc2_)
               {
                  facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_MARKET_PUSH_NOTIFICATION_MESSAGE,ServerMarketOfferSoldCommand);
                  if(!_loc3_)
                  {
                     facade.registerCommand(ServerNotificationConstants.SERVER_CONNECTION_IDLE_CLOSE,ServerMessageConnectionIdleClose);
                     if(_loc2_)
                     {
                        facade.registerCommand(ServerNotificationConstants.SERVER_ILLEGAL_PARAM_FAIL,ServerMessageIllegalParamFailCommand);
                        if(!(_loc3_ && _loc3_))
                        {
                           facade.registerCommand(ServerNotificationConstants.SERVER_CONNECTION_CLOSED,ServerConnectionClosed);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_HARVESTHELPER_RESIDENTIAL_SUCCESS_SPOOL,ServerMessageRentCollectorSuccessCommand);
                              if(_loc2_)
                              {
                                 facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_ITEM_BOOSTPHASE_UPDATE,ServerMessagePlayfieldItemBoostPhaseUpdateCommand);
                                 if(_loc2_ || _loc2_)
                                 {
                                    facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_BUILDING_NEW,ServerMessagePlayfieldBuildingNewCommand);
                                    if(_loc2_ || _loc3_)
                                    {
                                       facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_BUILDING_CREATE_FAILED,ServerMessageCreateBuildingFailedCommand);
                                       if(_loc2_ || Boolean(param1))
                                       {
                                          facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_BUILDING_CONSTRUCTIONPHASE_UPDATE,ServerMessagePlayfieldBuildingConstructionPhaseupdateCommand);
                                          if(_loc2_ || _loc3_)
                                          {
                                             facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_BUILDING_HARVESTPHASE_UPDATE,ServerMessagePlayfieldBuildingHarvestphaseUpdateCommand);
                                             if(!_loc3_)
                                             {
                                                addr0142:
                                                facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_BUILDING_UPGRADEPHASE_UPDATE,ServerMessagePlayfieldBuildingUpgradePhaseUpdateCommand);
                                                if(!_loc3_)
                                                {
                                                   facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_BUILDING_CONSTRUCTION_FINISHED,ServerMessagePlayfieldBuildingConstructionFinishedCommand);
                                                   if(_loc2_ || Boolean(param1))
                                                   {
                                                      addr0170:
                                                      facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_BUILDING_PHASE_NEW,ServerMessagePlayfieldBuildingPhaseNewCommand);
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_BUILDING_RESIDENT_SWAP_SUCCESS,ServerMessagePlayfieldBuildingResidentSwapSuccessCommand);
                                                         if(!(_loc3_ && Boolean(param1)))
                                                         {
                                                            addr01a6:
                                                            facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_BUILDING_MOVE_FAILED,ServerMessagePlayfieldBuildingMoveFailedCommand);
                                                            if(_loc2_ || Boolean(this))
                                                            {
                                                               facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_BUILDING_MOVE_SUCCESS,ServerMessagePlayfieldBuildingMoveSuccessCommand);
                                                               if(_loc2_ || Boolean(param1))
                                                               {
                                                                  facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELDITEM_ACTIVE_STATE_CHANGED,ServerMessagePlayfieldItemActiveStateChangedCommand);
                                                                  if(!(_loc3_ && Boolean(this)))
                                                                  {
                                                                     facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_CREATE_GROUND_SUCCESS,ServerMessagePlayfieldCreateGroundSuccess);
                                                                     if(_loc2_)
                                                                     {
                                                                        facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_UPDATE_GROUND_SUCCESS,ServerMessagePlayfieldUpdateGroundSuccess);
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr021d:
                                                                           facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_CREATE_GROUND_FAILED,ServerMessagePlayfieldCreateGroundFailed);
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_DESTROY_GROUND_SUCCESS,ServerMessagePlayfieldDestroyGroundSuccess);
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr024b:
                                                                                 facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_DESTROY_GROUND_FAILED,ServerMessagePlayfieldDeleteGroundFailed);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_MOVE_GROUND_SUCCESS,ServerMessagePlayfieldMoveGroundSuccess);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_MOVE_GROUND_FAILED,ServerMessagePlayfieldMoveGroundFailed);
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_BOULDER_CREATED,ServerMessagePlayfieldBoulderCreatedCommand);
                                                                                          if(_loc2_ || _loc2_)
                                                                                          {
                                                                                             facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_BOULDER_PHASE_STARTED,ServerMessagePlayfieldBoulderPhaseStartedCommand);
                                                                                             if(_loc2_ || _loc3_)
                                                                                             {
                                                                                                facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_BOULDER_DESTRUCTIONPHASE_UPDATE,ServerMessagePlayfieldBoulderDestructionPhaseUpdateCommand);
                                                                                                if(_loc2_ || _loc2_)
                                                                                                {
                                                                                                   facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_BOULDER_DELETED,ServerMessagePlayfieldBoulderDeletedCommand);
                                                                                                   if(_loc2_ || _loc2_)
                                                                                                   {
                                                                                                      addr02f8:
                                                                                                      facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_SWITCH_SUCCESS,ServerMessagePlayfieldSwitchSuccessCommand);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         addr030b:
                                                                                                         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_EXPAND_FAILED,ServerMessagePlayfieldExpandFailed);
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_EXPAND_SUCCESS,ServerMessagePlayfieldExpandSuccess);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_DELETE_DECORATION_SUCCESS,ServerMessagePlayfieldDecorationDeleteSuccess);
                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                               {
                                                                                                                  facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_CREATE_DECORATION_SUCCESS,ServerMessagePlayfieldCreateDecorationSuccess);
                                                                                                                  if(!(_loc3_ && Boolean(param1)))
                                                                                                                  {
                                                                                                                     facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_CREATE_DECORATION_FAILED,ServerMessagePlayfieldDecorationCreateFailed);
                                                                                                                     if(_loc2_ || Boolean(this))
                                                                                                                     {
                                                                                                                        facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_MOVE_DECORATION_FAILED,ServerMessagePlayfieldDecorationMoveFailed);
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_MOVE_DECORATION_SUCCESS,ServerMessagePlayfieldDecorationMoveSuccess);
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              addr03a8:
                                                                                                                              facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_DELETE_DECORATION_FAILED,ServerMessagePlayfieldDecorationDeleteFailed);
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_RESOURCES,ServerMessageResourcesCommand);
                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr03e2:
                                                                                                                                    facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYER_LEVEL_UP_SUCCESS,ServerMessagePlayerLevelUpSuccessCommand);
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       addr03f5:
                                                                                                                                       facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYER_BOOKED_PAYMENTPACK,ServerMessagePaymentPackBookedCommand);
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYER_PAYMENTPACK_UPDATE,ServerMessagePaymentPackUpdateCommand);
                                                                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_PRODUCTION_PHASEUPDATE,ServerMessagePlayfieldProductionPhaseupdateCommand);
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_PRODUCTION_FAILED,ServerMessagePlayfieldProductionFailedCommand);
                                                                                                                                                if(!(_loc3_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   addr0451:
                                                                                                                                                   facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_PRODUCTION_HARVEST_SUCCESS,ServerMessagePlayfieldProductionHarvestSuccessCommand);
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr0464:
                                                                                                                                                      facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_PRODUCTION_HARVEST_FAILED,ServerMessagePlayfieldProductionHarvestFailedCommand);
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_PRODUCTION_CANCEL_SUCCESS,ServerMessagePlayfieldProductionCancelSuccessCommand);
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_PRODUCTION_CANCEL_FAILED,ServerMessagePlayfieldProductionCancelFailedCommand);
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr049d:
                                                                                                                                                               facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_STACK_NEED_SUCCESS,ServerMessagePlayfieldStackNeedSuccessCommand);
                                                                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  addr04b8:
                                                                                                                                                                  facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_NEED_CONSUMED,ServerMessagePlayfieldNeedConsumedCommand);
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr04cb:
                                                                                                                                                                     facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_FRIENDS_UPDATE,ServerMessageFriendsUpdateCommand);
                                                                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr04e6:
                                                                                                                                                                        facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_SLAYER_INVITE_FRIEND_SUCCESS,ServerMessageSlayerInviteFriendSuccessCommand);
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_SLAYER_INVITE_FRIEND_FAILED,ServerMessageSlayerInviteFriendFailedCommand);
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr050c:
                                                                                                                                                                              facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_SLAYER_REQUEST_FRIENDLIST_FAILED,ServerMessageSlayerRequestFriendFailedCommand);
                                                                                                                                                                              if(_loc2_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_SWITCH_FEATURE_ACTIVATION,ServerMessageSwitchFeatureActionCommand);
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr053a:
                                                                                                                                                                                    facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_BUILDING_RANDOM_DROP,ServerMessagePlayfieldBuildingRandomDropCommand);
                                                                                                                                                                                    if(_loc2_ || Boolean(this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr0555:
                                                                                                                                                                                       facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_EMERGENCY_UPDATE,ServerMessageEmergencyUpdateCommand);
                                                                                                                                                                                       if(!(_loc3_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_EMERGENCY_FINISH,ServerMessageEmergencyFinishCommand);
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PROFESSIONAL_CREATE_SUCCESS,ServerMessageProfessionalCreateSuccess);
                                                                                                                                                                                             if(_loc2_ || Boolean(param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr059e:
                                                                                                                                                                                                facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PROFESSIONAL_DISMISS_SUCCESS,ServerMessageProfessionalDismissSuccess);
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PROFESSIONAL_CHANGE_SUCCESS,ServerMessageProfessionalChangeSuccess);
                                                                                                                                                                                                   if(_loc2_ || Boolean(this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr05cc:
                                                                                                                                                                                                      facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_BOOSTER_REWARD_SUCCESS,ServerMessageBoosterRewardSuccessCommand);
                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr05df:
                                                                                                                                                                                                         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_EDUCATION_CREATED,ServerMessageEducationStackCreatedCommand);
                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_EDUCATION_EXTEND_SUCCESS,ServerMessageEducationExtendSuccessCommand);
                                                                                                                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_EDUCATION_EXTEND_FAIL,ServerMessageEducationExtendFailCommand);
                                                                                                                                                                                                               if(_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr0620:
                                                                                                                                                                                                                  facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_START_EDUCATION_SUCCESS,ServerMessageStartEducationSuccessCommand);
                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr0633:
                                                                                                                                                                                                                     facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_START_EDUCATION_FAIL,ServerMessageStartEducationFailCommand);
                                                                                                                                                                                                                     if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr064e:
                                                                                                                                                                                                                        facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PROFESSIONAL_ATTRIBUTE_CHANGE_SUCCESS,ServerMessageProfessionalAttributeChangeSuccessCommand);
                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PROFESSIONAL_ATTRIBUTE_CHANGE_FAIL,ServerMessageProfessionalAttributeChangeFailCommand);
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr0674:
                                                                                                                                                                                                                              facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_EDUCATION_FINISHED,ServerMessageEducationFinishedCommand);
                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr0687:
                                                                                                                                                                                                                                 facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PROFESSIONAL_ASSIGNED_SUCCESS,ServerMessageProfessionalAssignedSuccess);
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr069a);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr076d);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr0788);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr069a:
                                                                                                                                                                                                                           facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PROFESSIONAL_SPECIALIZATION_CHANGE,ServernMessageProfessionalSpecializationChangedCommand);
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr06ad:
                                                                                                                                                                                                                              facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_INVENTORY_UPDATE,ServerMessageInventoryUpdateCommand);
                                                                                                                                                                                                                              if(_loc2_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr06c8:
                                                                                                                                                                                                                                 facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_EXPAND_INVENTORY_BAG_SUCCESS,ServerMessageExpandInventoryBagSuccessCommand);
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr06db:
                                                                                                                                                                                                                                    facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYER_NEWSSCREEN_UPDATE,ServerMessagePlayerNewsscreenUpdateCommand);
                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr06ee:
                                                                                                                                                                                                                                       facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_IMPROVEMENT_BOOSTER_REWARD_SUCCESS,ServerMessageImprovementBoosterRewardSuccessCommand);
                                                                                                                                                                                                                                       if(_loc2_ || Boolean(param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr0709:
                                                                                                                                                                                                                                          facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELDITEM_IMPROVEMENT_DELETED,ServerMessagePlayfieldItemImprovementDeletedCommand);
                                                                                                                                                                                                                                          if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr0724);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr0752);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr07a3);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr07db);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0724);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr0788);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0724);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr07a3);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr06ee);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr064e);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0674);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr076d);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr06ad);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0633);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr064e);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr0724:
                                                                                                                                                                                                facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELDITEM_IMPROVEMENT_EQUIPPED,ServerMessagePlayfieldItemImprovementEquippedCommand);
                                                                                                                                                                                                if(_loc2_ || Boolean(param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr073f:
                                                                                                                                                                                                   facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELDITEM_IMPROVEMENT_UPDATED,ServerMessagePlayfieldItemImprovementUpdateCommand);
                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0752:
                                                                                                                                                                                                      facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYER_FEATURE_UPDATE,ServerMessagePlayerFeatureUpdateCommand);
                                                                                                                                                                                                      if(_loc2_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr076d:
                                                                                                                                                                                                         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_CITY_WHEEL_UPDATE,ServerMessageCityWheelUpdateCommand);
                                                                                                                                                                                                         if(_loc2_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr0788:
                                                                                                                                                                                                            facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_MASTERY_CHALLENGE_UPDATE,ServerMessageMasteryChallengeUpdateCommand);
                                                                                                                                                                                                            if(!(_loc3_ && Boolean(param1)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_MASTERY_BONUS_UPDATE,ServerMessageMasteryBonusUpdateCommand);
                                                                                                                                                                                                               addr07a3:
                                                                                                                                                                                                               if(_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr07c0);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr07db);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr07a3);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr07c0:
                                                                                                                                                                                                facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_CINEMA_UPDATE,ServerMessageCinemaUpdateCommand);
                                                                                                                                                                                                if(!(_loc3_ && Boolean(param1)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr07db:
                                                                                                                                                                                                   facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYER_PAYMENT_UPSELL_UPDATE,ServerMessagePlayerPaymentUpsellUpdateCommand);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr07e9);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0687);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr07e9);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0724);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0788);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr07c0);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr06ee);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0709);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0620);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0633);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr050c);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr05df);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr06ee);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr07a3);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr04e6);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr049d);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0724);
                                                                                                                                             }
                                                                                                                                             §§goto(addr073f);
                                                                                                                                          }
                                                                                                                                          §§goto(addr049d);
                                                                                                                                       }
                                                                                                                                       §§goto(addr06c8);
                                                                                                                                    }
                                                                                                                                    §§goto(addr05cc);
                                                                                                                                 }
                                                                                                                                 §§goto(addr07db);
                                                                                                                              }
                                                                                                                              §§goto(addr069a);
                                                                                                                           }
                                                                                                                           §§goto(addr03f5);
                                                                                                                        }
                                                                                                                        §§goto(addr07c0);
                                                                                                                     }
                                                                                                                     §§goto(addr050c);
                                                                                                                  }
                                                                                                                  §§goto(addr06ad);
                                                                                                               }
                                                                                                               §§goto(addr07c0);
                                                                                                            }
                                                                                                            §§goto(addr04cb);
                                                                                                         }
                                                                                                         §§goto(addr03e2);
                                                                                                      }
                                                                                                      §§goto(addr07a3);
                                                                                                   }
                                                                                                   §§goto(addr03f5);
                                                                                                }
                                                                                                §§goto(addr030b);
                                                                                             }
                                                                                             §§goto(addr03f5);
                                                                                          }
                                                                                          §§goto(addr0555);
                                                                                       }
                                                                                       §§goto(addr0788);
                                                                                    }
                                                                                    §§goto(addr0724);
                                                                                 }
                                                                                 §§goto(addr03a8);
                                                                              }
                                                                              §§goto(addr0451);
                                                                           }
                                                                           §§goto(addr0709);
                                                                        }
                                                                        §§goto(addr0451);
                                                                     }
                                                                     §§goto(addr0752);
                                                                  }
                                                                  §§goto(addr021d);
                                                               }
                                                               §§goto(addr024b);
                                                            }
                                                            §§goto(addr0451);
                                                         }
                                                         §§goto(addr053a);
                                                      }
                                                      §§goto(addr01a6);
                                                   }
                                                   §§goto(addr0687);
                                                }
                                                §§goto(addr04cb);
                                             }
                                             §§goto(addr059e);
                                          }
                                          §§goto(addr06db);
                                       }
                                       §§goto(addr02f8);
                                    }
                                    §§goto(addr03e2);
                                 }
                                 addr07e9:
                                 return;
                              }
                              §§goto(addr04b8);
                           }
                           §§goto(addr0170);
                        }
                        §§goto(addr069a);
                     }
                     §§goto(addr0464);
                  }
               }
               §§goto(addr0451);
            }
            §§goto(addr0142);
         }
         §§goto(addr03e2);
      }
   }
}

