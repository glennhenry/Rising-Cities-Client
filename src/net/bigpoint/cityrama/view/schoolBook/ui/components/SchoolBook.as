package net.bigpoint.cityrama.view.schoolBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.schoolBook.vo.EducationAttributeVo;
   import net.bigpoint.cityrama.model.schoolBook.vo.SchoolBookVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.StatsProgressbar;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.AddSkillpointEvent;
   import net.bigpoint.cityrama.view.schoolBook.ui.events.SchoolBookEvent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class SchoolBook extends PaperPopupWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         _skinParts = {
            "moveArea":false,
            "closeButton":false,
            "controlBarGroup":false,
            "contentGroup":false,
            "backButton":false,
            "tabBar":false,
            "sideMenu":false,
            "titleDisplay":false
         };
      }
      
      private var _389389280contentLeft:SchoolBookContentLeft;
      
      private var _819495203contentRight:SchoolBookEducationContentRight;
      
      private var _1396691625contentRightEducationFinished:SchoolBookEducationFinishedContentRight;
      
      private var _217608008contentRightFinishedNoDepartment:SchoolBookNotAssignableContentRight;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:SchoolBookVo;
      
      private var _dataIsDirty:Boolean;
      
      public function SchoolBook()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(_loc2_ || _loc1_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.styleName = "school";
                  if(_loc2_ || Boolean(this))
                  {
                     addr0068:
                     this.mxmlContentFactory = new DeferredInstanceFromFunction(this._SchoolBook_Array1_c);
                     if(_loc2_ || _loc1_)
                     {
                        this.addEventListener("creationComplete",this.___SchoolBook_PaperPopupWindow1_creationComplete);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0068);
      }
      
      private static function traitWillBeUnlocked(param1:EducationAttributeVo) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc3_:int = 0;
         var _loc4_:* = param1.traitThresholds;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  §§push(_loc2_.threshold > param1.amount);
                  if(_loc5_)
                  {
                     var _temp_1:* = §§pop();
                     §§push(_temp_1);
                     if(_temp_1)
                     {
                        if(_loc5_ || SchoolBook)
                        {
                           §§pop();
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              addr0074:
                              §§push(param1.amount + param1.tempMod >= _loc2_.threshold);
                              if(_loc6_ && SchoolBook)
                              {
                                 break;
                              }
                              addr009e:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!(_loc5_ || SchoolBook))
                              {
                                 continue;
                              }
                           }
                           §§push(true);
                           break;
                        }
                     }
                  }
                  §§goto(addr009e);
               }
               §§goto(addr0074);
            }
            return false;
         }
         return §§pop();
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr005f);
                  }
               }
               §§goto(addr006d);
            }
            addr005f:
            return;
         }
         addr006d:
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            title = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.title");
            if(!(_loc1_ && Boolean(this)))
            {
               this.contentLeft.addEventListener(SchoolBookEvent.SCHOOL_USE_STAT_POINT,this.onStatClick);
            }
         }
      }
      
      public function set data(param1:SchoolBookVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(!_loc2_)
               {
                  addr0038:
                  this._data = param1;
                  if(_loc3_)
                  {
                     this._dataIsDirty = true;
                     if(!_loc2_)
                     {
                        addr004c:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0051);
               }
               §§goto(addr004c);
            }
            addr0051:
            return;
         }
         §§goto(addr0038);
      }
      
      public function set instantFinishData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.contentRight.instantFinishData = param1;
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            super.commitProperties();
            if(_loc2_)
            {
               §§push(this._dataIsDirty);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        this._dataIsDirty = false;
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(this.contentLeft);
                           if(_loc2_)
                           {
                              §§push(this._data);
                              if(_loc2_)
                              {
                                 §§pop().educationFinished = §§pop().educationIsFinished;
                                 if(_loc2_)
                                 {
                                    §§push(this.contentLeft);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(this._data);
                                       if(_loc2_)
                                       {
                                          addr0084:
                                          §§pop().studentData = §§pop().student;
                                          if(!_loc3_)
                                          {
                                             §§push(this.contentLeft);
                                             if(!_loc3_)
                                             {
                                                §§push(this._data);
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   §§pop().skillPointsAvailable = §§pop().skillPointsLeft;
                                                   if(!_loc3_)
                                                   {
                                                      addr00bc:
                                                      this.contentLeft.attributes = this._data.attributes;
                                                      addr00b8:
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         §§push(this.contentRight);
                                                         if(_loc2_)
                                                         {
                                                            §§push(this._data);
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               §§push(§§pop().skillPointsToAdd);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(§§pop() == 0);
                                                                  if(_loc2_)
                                                                  {
                                                                     var _temp_7:* = §§pop();
                                                                     §§push(_temp_7);
                                                                     if(!_temp_7)
                                                                     {
                                                                        if(_loc2_ || Boolean(this))
                                                                        {
                                                                           §§pop();
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(this._data);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§pop().progressInfo);
                                                                                 if(_loc2_ || _loc1_)
                                                                                 {
                                                                                    §§push(§§pop().waitingForStart);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr0132:
                                                                                       §§push(!§§pop());
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr0138:
                                                                                          §§pop().noMoreStepsAvailable = §§pop();
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr0141:
                                                                                             §§push(this.contentRight);
                                                                                             if(_loc2_ || Boolean(this))
                                                                                             {
                                                                                                §§push(this._data);
                                                                                                if(!(_loc3_ && Boolean(this)))
                                                                                                {
                                                                                                   §§push(§§pop().progressInfo);
                                                                                                   if(_loc2_ || Boolean(this))
                                                                                                   {
                                                                                                      §§push(§§pop().waitingForStart);
                                                                                                      if(_loc2_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr0189:
                                                                                                            §§pop().educationRunning = §§pop();
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(this.contentRight);
                                                                                                               if(_loc2_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(this._data);
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     addr01ab:
                                                                                                                     §§push(§§pop().skillPointsToAdd);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        addr01b3:
                                                                                                                        §§pop().setNextSkillPoints(§§pop());
                                                                                                                        if(_loc2_ || Boolean(this))
                                                                                                                        {
                                                                                                                           addr01c5:
                                                                                                                           §§push(this.contentRight);
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              §§push(this._data);
                                                                                                                              if(_loc2_ || _loc1_)
                                                                                                                              {
                                                                                                                                 §§goto(addr01df);
                                                                                                                              }
                                                                                                                              §§goto(addr02a5);
                                                                                                                           }
                                                                                                                           §§goto(addr01fc);
                                                                                                                        }
                                                                                                                        §§goto(addr02e6);
                                                                                                                     }
                                                                                                                     §§goto(addr0243);
                                                                                                                  }
                                                                                                                  addr01df:
                                                                                                                  §§pop().stepDuration = §§pop().duration;
                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr01f3:
                                                                                                                     §§push(this.contentRight);
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        addr01fc:
                                                                                                                        §§push(this._data);
                                                                                                                        if(_loc2_ || _loc1_)
                                                                                                                        {
                                                                                                                           addr020d:
                                                                                                                           §§push(§§pop().pointCost);
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              §§pop().educationPrice = §§pop();
                                                                                                                              if(_loc2_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 §§push(this.contentRight);
                                                                                                                                 if(_loc2_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    §§push(this._data);
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       addr0243:
                                                                                                                                       §§pop().educationPriceDextro = §§pop().dextroCost;
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(this.contentRight);
                                                                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             addr025d:
                                                                                                                                             §§push(this._data);
                                                                                                                                             if(!(_loc3_ && _loc1_))
                                                                                                                                             {
                                                                                                                                                addr026e:
                                                                                                                                                §§push(§§pop().educationPointsAvailable);
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   addr0276:
                                                                                                                                                   §§pop().hasEnoughPoints = §§pop();
                                                                                                                                                   if(_loc2_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr0287:
                                                                                                                                                      §§push(this.contentRight);
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr0290:
                                                                                                                                                         §§push(this._data);
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr02a5:
                                                                                                                                                            §§push(§§pop().dextroAvailable);
                                                                                                                                                            if(_loc2_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr02b5:
                                                                                                                                                               §§pop().hasEnoughDextro = §§pop();
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.contentRight);
                                                                                                                                                                  if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     addr02d5:
                                                                                                                                                                     §§pop().harvestValues = this._data.progressInfo;
                                                                                                                                                                     addr02d2:
                                                                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr02e6:
                                                                                                                                                                        §§push(this.contentRightEducationFinished);
                                                                                                                                                                        if(_loc2_ || _loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this._data);
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().data = §§pop().departmentData;
                                                                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr0312:
                                                                                                                                                                                 §§push(this.contentRightEducationFinished);
                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr031f:
                                                                                                                                                                                    §§pop().studentData = this._data.assignedProfessional;
                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr032a:
                                                                                                                                                                                       §§push(this.contentRightFinishedNoDepartment);
                                                                                                                                                                                       if(_loc2_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().data = this._data.assignedProfessional;
                                                                                                                                                                                          if(_loc2_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr0351:
                                                                                                                                                                                             addr0358:
                                                                                                                                                                                             if(this._data.educationIsFinished)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr0361:
                                                                                                                                                                                                   §§push(this.contentRight);
                                                                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0372:
                                                                                                                                                                                                      §§push(this.contentRight);
                                                                                                                                                                                                      if(_loc2_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(false);
                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            var _temp_33:* = §§pop();
                                                                                                                                                                                                            §§push(_temp_33);
                                                                                                                                                                                                            §§push(_temp_33);
                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               var _loc1_:* = §§pop();
                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr03b1:
                                                                                                                                                                                                                           §§pop().visible = §§pop();
                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr03b8:
                                                                                                                                                                                                                              §§push(this.flavorText);
                                                                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.flavorTextFinished"));
                                                                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().text = §§pop();
                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr03d9:
                                                                                                                                                                                                                                       §§push(this.contentRightFinishedNoDepartment);
                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.contentRightFinishedNoDepartment);
                                                                                                                                                                                                                                          if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this._data.emergencyFeatureDisabled);
                                                                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                var _temp_36:* = §§pop();
                                                                                                                                                                                                                                                §§push(_temp_36);
                                                                                                                                                                                                                                                §§push(_temp_36);
                                                                                                                                                                                                                                                if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc1_ = §§pop();
                                                                                                                                                                                                                                                   if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop().visible = §§pop();
                                                                                                                                                                                                                                                               if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.contentRightEducationFinished);
                                                                                                                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr0457:
                                                                                                                                                                                                                                                                     §§push(this.contentRightEducationFinished);
                                                                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this._data.emergencyFeatureDisabled);
                                                                                                                                                                                                                                                                        if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(!§§pop());
                                                                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              var _temp_43:* = §§pop();
                                                                                                                                                                                                                                                                              §§push(_temp_43);
                                                                                                                                                                                                                                                                              §§push(_temp_43);
                                                                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                                                                    if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc1_);
                                                                                                                                                                                                                                                                                       if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop().visible = §§pop();
                                                                                                                                                                                                                                                                                             if(!_loc2_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr0513:
                                                                                                                                                                                                                                                                                                §§push(this.contentRightFinishedNoDepartment);
                                                                                                                                                                                                                                                                                                this.contentRightFinishedNoDepartment.includeInLayout = _loc1_ = false;
                                                                                                                                                                                                                                                                                                addr0518:
                                                                                                                                                                                                                                                                                                §§pop().visible = _loc1_;
                                                                                                                                                                                                                                                                                                addr0516:
                                                                                                                                                                                                                                                                                                addr0515:
                                                                                                                                                                                                                                                                                                if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr0537:
                                                                                                                                                                                                                                                                                                   this.flavorText.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.flavorText");
                                                                                                                                                                                                                                                                                                   addr052b:
                                                                                                                                                                                                                                                                                                   addr0527:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr04fb:
                                                                                                                                                                                                                                                                                                addr0512:
                                                                                                                                                                                                                                                                                                addr0511:
                                                                                                                                                                                                                                                                                                addr0510:
                                                                                                                                                                                                                                                                                                addr050c:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr04ec:
                                                                                                                                                                                                                                                                                             §§pop().visible = §§pop();
                                                                                                                                                                                                                                                                                             if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr04fb);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr0539);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr04ea:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr04ec);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr04e9:
                                                                                                                                                                                                                                                                                       §§push(_loc1_);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr04ea);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr04e7:
                                                                                                                                                                                                                                                                                    §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr04e9);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr04e6:
                                                                                                                                                                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr04e7);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr04e5:
                                                                                                                                                                                                                                                                              var _temp_49:* = §§pop();
                                                                                                                                                                                                                                                                              §§push(_temp_49);
                                                                                                                                                                                                                                                                              §§push(_temp_49);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr04e6);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr04e4:
                                                                                                                                                                                                                                                                        §§push(false);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr04e5);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr04e0:
                                                                                                                                                                                                                                                                     §§push(this.contentRightEducationFinished);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr04e4);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr04dc:
                                                                                                                                                                                                                                                                  §§push(this.contentRightEducationFinished);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr04e0);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr0518);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr0516);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr0515);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr0513);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr0512);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0511);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr0510);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr050c);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0539);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0537);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr052b);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0527);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr04cd:
                                                                                                                                                                                                                           §§pop().visible = §§pop();
                                                                                                                                                                                                                           if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr04dc);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr04fb);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr04cb:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr04cd);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr04ca:
                                                                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr04cb);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr04c8:
                                                                                                                                                                                                                  §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr04ca);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr04c7:
                                                                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr04c8);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr04c6:
                                                                                                                                                                                                            var _temp_51:* = §§pop();
                                                                                                                                                                                                            §§push(_temp_51);
                                                                                                                                                                                                            §§push(_temp_51);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr04c7);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr04c5:
                                                                                                                                                                                                         §§push(true);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr04c6);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr04c1:
                                                                                                                                                                                                      §§push(this.contentRight);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr04c5);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr03d9);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.contentRight);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr04c1);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0361);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr050c);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr03b8);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr04e0);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr032a);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr031f);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0457);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr04dc);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr04c1);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr032a);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr03b1);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr02d2);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0372);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0539);
                                                                                                                                                }
                                                                                                                                                §§goto(addr02b5);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02d2);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0290);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0527);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02d2);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0290);
                                                                                                                              }
                                                                                                                              §§goto(addr032a);
                                                                                                                           }
                                                                                                                           §§goto(addr0243);
                                                                                                                        }
                                                                                                                        §§goto(addr026e);
                                                                                                                     }
                                                                                                                     §§goto(addr025d);
                                                                                                                  }
                                                                                                                  §§goto(addr0539);
                                                                                                               }
                                                                                                               §§goto(addr04c1);
                                                                                                            }
                                                                                                            §§goto(addr0351);
                                                                                                         }
                                                                                                         §§goto(addr03b1);
                                                                                                      }
                                                                                                      §§goto(addr0189);
                                                                                                   }
                                                                                                   §§goto(addr02d5);
                                                                                                }
                                                                                                §§goto(addr01ab);
                                                                                             }
                                                                                             §§goto(addr04c1);
                                                                                          }
                                                                                          §§goto(addr0312);
                                                                                       }
                                                                                       §§goto(addr03b1);
                                                                                    }
                                                                                    §§goto(addr0276);
                                                                                 }
                                                                                 §§goto(addr02d5);
                                                                              }
                                                                              §§goto(addr026e);
                                                                           }
                                                                           §§goto(addr0290);
                                                                        }
                                                                        §§goto(addr0132);
                                                                     }
                                                                     §§goto(addr0138);
                                                                  }
                                                                  §§goto(addr03b1);
                                                               }
                                                               §§goto(addr01b3);
                                                            }
                                                            §§goto(addr020d);
                                                         }
                                                         §§goto(addr0290);
                                                      }
                                                      §§goto(addr04fb);
                                                   }
                                                   §§goto(addr02e6);
                                                }
                                                §§goto(addr00bc);
                                             }
                                             §§goto(addr00b8);
                                          }
                                          §§goto(addr0141);
                                       }
                                       §§goto(addr00bc);
                                    }
                                    §§goto(addr00b8);
                                 }
                                 §§goto(addr04fb);
                              }
                              §§goto(addr0084);
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr032a);
                     }
                     §§goto(addr0287);
                  }
                  addr0539:
                  return;
               }
               §§goto(addr0358);
            }
            §§goto(addr01c5);
         }
         §§goto(addr01f3);
      }
      
      private function onStatClick(param1:SchoolBookEvent) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:AddSkillpointEvent = null;
         var _loc3_:EducationAttributeVo = null;
         if(!(_loc8_ && Boolean(_loc3_)))
         {
            if(param1.target is StatsProgressbar)
            {
               addr0039:
               _loc2_ = new AddSkillpointEvent(AddSkillpointEvent.ADD);
               if(_loc9_)
               {
                  _loc2_.attributeType = StatsProgressbar(param1.target).type;
               }
               for each(_loc3_ in this._data.attributes)
               {
                  if(!_loc8_)
                  {
                     if(_loc3_.attributeType == StatsProgressbar(param1.target).type)
                     {
                        if(!(_loc8_ && Boolean(param1)))
                        {
                           var _loc6_:* = _loc3_;
                           §§push(_loc6_.tempMod);
                           if(!_loc8_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc7_:* = §§pop();
                           if(!(_loc8_ && Boolean(this)))
                           {
                              _loc6_.tempMod = _loc7_;
                           }
                           if(!_loc9_)
                           {
                              continue;
                           }
                           _loc2_.sendToServerNow = traitWillBeUnlocked(_loc3_);
                           if(!(_loc9_ || Boolean(_loc3_)))
                           {
                              continue;
                           }
                           addr00fd:
                           if(_loc3_.amount + _loc3_.tempMod < _loc3_.maxCap)
                           {
                              continue;
                           }
                           if(!(_loc9_ || Boolean(this)))
                           {
                              continue;
                           }
                           StatsProgressbar(param1.target).enablePlusClick = false;
                           if(!_loc9_)
                           {
                              continue;
                           }
                        }
                        _loc2_.sendToServerNow = true;
                     }
                     continue;
                  }
                  §§goto(addr00fd);
               }
               if(_loc9_ || Boolean(this))
               {
                  _loc2_.professionalId = this._data.student.professionalId;
                  if(_loc9_ || Boolean(this))
                  {
                     §§goto(addr0177);
                  }
                  §§goto(addr018b);
               }
               addr0177:
               dispatchEvent(_loc2_);
               if(_loc9_ || Boolean(_loc3_))
               {
                  addr018b:
                  this.updateBars();
               }
               §§goto(addr0191);
            }
            addr0191:
            return;
         }
         §§goto(addr0039);
      }
      
      private function updateBars() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this.contentLeft.attributes = this._data.attributes;
         }
      }
      
      private function _SchoolBook_Array1_c() : Array
      {
         return [this._SchoolBook_VGroup1_c(),this._SchoolBook_BriskMCDynaLib1_c()];
      }
      
      private function _SchoolBook_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     _loc1_.verticalAlign = "top";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.paddingTop = 20;
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr0092);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr00b2);
               }
            }
            addr0092:
            _loc1_.gap = -10;
            if(!_loc2_)
            {
               addr009c:
               _loc1_.mxmlContent = [this._SchoolBook_HGroup1_c(),this._SchoolBook_Group1_c()];
               if(!_loc2_)
               {
                  addr00b2:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr009c);
      }
      
      private function _SchoolBook_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.height = 50;
                  if(_loc2_)
                  {
                     _loc1_.percentWidth = 100;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._SchoolBook_LocaLabel1_i()];
                        addr005a:
                        if(!(_loc3_ && Boolean(this)))
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr0093:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr0093);
                  }
                  addr0097:
                  return _loc1_;
               }
            }
         }
         §§goto(addr005a);
      }
      
      private function _SchoolBook_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 90;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.styleName = "flavorText";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc3_)
                  {
                     _loc1_.id = "flavorText";
                     if(_loc3_ || _loc3_)
                     {
                        addr0075:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(this))
                              {
                                 §§goto(addr009e);
                              }
                              §§goto(addr00a8);
                           }
                        }
                        addr009e:
                        this.flavorText = _loc1_;
                        if(_loc3_)
                        {
                           addr00a8:
                           BindingManager.executeBindings(this,"flavorText",this.flavorText);
                        }
                        §§goto(addr00b5);
                     }
                     addr00b5:
                     return _loc1_;
                  }
                  §§goto(addr0075);
               }
               §§goto(addr00a8);
            }
         }
         §§goto(addr0075);
      }
      
      private function _SchoolBook_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._SchoolBook_SchoolBookEducationContentRight1_i(),this._SchoolBook_SchoolBookEducationFinishedContentRight1_i(),this._SchoolBook_SchoolBookNotAssignableContentRight1_i(),this._SchoolBook_SchoolBookContentLeft1_i()];
                  addr003d:
                  if(_loc2_)
                  {
                     §§goto(addr0069);
                  }
               }
               §§goto(addr007d);
            }
            §§goto(addr003d);
         }
         addr0069:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(this))
            {
               addr007d:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SchoolBook_SchoolBookEducationContentRight1_i() : SchoolBookEducationContentRight
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SchoolBookEducationContentRight = new SchoolBookEducationContentRight();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.right = -16;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr005b:
                  _loc1_.id = "contentRight";
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc3_)
                           {
                              §§goto(addr009e);
                           }
                           §§goto(addr00a8);
                        }
                     }
                     addr009e:
                     this.contentRight = _loc1_;
                     if(!_loc3_)
                     {
                        addr00a8:
                        BindingManager.executeBindings(this,"contentRight",this.contentRight);
                     }
                  }
                  §§goto(addr00b5);
               }
               §§goto(addr009e);
            }
            addr00b5:
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      private function _SchoolBook_SchoolBookEducationFinishedContentRight1_i() : SchoolBookEducationFinishedContentRight
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SchoolBookEducationFinishedContentRight = new SchoolBookEducationFinishedContentRight();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.right = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.top = 5;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.includeInLayout = false;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr007d:
                        _loc1_.visible = false;
                        if(!_loc3_)
                        {
                           _loc1_.id = "contentRightEducationFinished";
                           if(!_loc3_)
                           {
                              addr0091:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00b1:
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       addr00ba:
                                       this.contentRightEducationFinished = _loc1_;
                                       if(_loc2_ || Boolean(_loc1_))
                                       {
                                          addr00cc:
                                          BindingManager.executeBindings(this,"contentRightEducationFinished",this.contentRightEducationFinished);
                                       }
                                    }
                                 }
                                 §§goto(addr00d9);
                              }
                              §§goto(addr00ba);
                           }
                           §§goto(addr00d9);
                        }
                        §§goto(addr0091);
                     }
                     addr00d9:
                     return _loc1_;
                  }
               }
               §§goto(addr007d);
            }
            §§goto(addr00b1);
         }
         §§goto(addr00cc);
      }
      
      private function _SchoolBook_SchoolBookNotAssignableContentRight1_i() : SchoolBookNotAssignableContentRight
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SchoolBookNotAssignableContentRight = new SchoolBookNotAssignableContentRight();
         if(!_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.width = 380;
               if(_loc3_)
               {
                  _loc1_.right = -8;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.top = 5;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr006e:
                        _loc1_.includeInLayout = false;
                        if(!_loc2_)
                        {
                           _loc1_.visible = false;
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.id = "contentRightFinishedNoDepartment";
                              if(!_loc2_)
                              {
                                 addr0093:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr00ac);
                                    }
                                    §§goto(addr00c7);
                                 }
                                 §§goto(addr00b5);
                              }
                              addr00ac:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr00b5:
                                 this.contentRightFinishedNoDepartment = _loc1_;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00c7:
                                    BindingManager.executeBindings(this,"contentRightFinishedNoDepartment",this.contentRightFinishedNoDepartment);
                                 }
                              }
                              §§goto(addr00d4);
                           }
                        }
                        §§goto(addr00d4);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr0093);
               }
               addr00d4:
               return _loc1_;
            }
            §§goto(addr00c7);
         }
         §§goto(addr006e);
      }
      
      private function _SchoolBook_SchoolBookContentLeft1_i() : SchoolBookContentLeft
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SchoolBookContentLeft = new SchoolBookContentLeft();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.width = 380;
            if(!_loc3_)
            {
               addr0035:
               _loc1_.height = 330;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.left = -6;
                  if(_loc2_)
                  {
                     _loc1_.id = "contentLeft";
                     if(!_loc3_)
                     {
                        addr0068:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr0093:
                                 this.contentLeft = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr009d:
                                    BindingManager.executeBindings(this,"contentLeft",this.contentLeft);
                                 }
                                 §§goto(addr00aa);
                              }
                              §§goto(addr009d);
                           }
                           addr00aa:
                           return _loc1_;
                        }
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0068);
               }
            }
            §§goto(addr009d);
         }
         §§goto(addr0035);
      }
      
      private function _SchoolBook_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && _loc3_))
            {
               addr0041:
               _loc1_.dynaMCSourceName = "stickytape_left";
               if(!_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!_loc2_)
                  {
                     addr0065:
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr0077);
                     }
                     §§goto(addr0083);
                  }
                  addr0077:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0083:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0065);
            }
            §§goto(addr0083);
         }
         §§goto(addr0041);
      }
      
      public function ___SchoolBook_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contentLeft() : SchoolBookContentLeft
      {
         return this._389389280contentLeft;
      }
      
      public function set contentLeft(param1:SchoolBookContentLeft) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._389389280contentLeft;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0037:
                  this._389389280contentLeft = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentLeft",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
            addr007d:
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get contentRight() : SchoolBookEducationContentRight
      {
         return this._819495203contentRight;
      }
      
      public function set contentRight(param1:SchoolBookEducationContentRight) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._819495203contentRight;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._819495203contentRight = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentRight",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr0065);
               }
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get contentRightEducationFinished() : SchoolBookEducationFinishedContentRight
      {
         return this._1396691625contentRightEducationFinished;
      }
      
      public function set contentRightEducationFinished(param1:SchoolBookEducationFinishedContentRight) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1396691625contentRightEducationFinished;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1396691625contentRightEducationFinished = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentRightEducationFinished",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0075);
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get contentRightFinishedNoDepartment() : SchoolBookNotAssignableContentRight
      {
         return this._217608008contentRightFinishedNoDepartment;
      }
      
      public function set contentRightFinishedNoDepartment(param1:SchoolBookNotAssignableContentRight) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._217608008contentRightFinishedNoDepartment;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._217608008contentRightFinishedNoDepartment = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentRightFinishedNoDepartment",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1684755691flavorText;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1684755691flavorText = param1;
                  addr0041:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0041);
      }
   }
}

