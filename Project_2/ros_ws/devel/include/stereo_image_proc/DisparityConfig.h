//#line 2 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
//
// File autogenerated for the stereo_image_proc package
// by the dynamic_reconfigure package.
// Please do not edit.
//
// ********************************************************/

#ifndef __stereo_image_proc__DISPARITYCONFIG_H__
#define __stereo_image_proc__DISPARITYCONFIG_H__

#if __cplusplus >= 201103L
#define DYNAMIC_RECONFIGURE_FINAL final
#else
#define DYNAMIC_RECONFIGURE_FINAL
#endif

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace stereo_image_proc
{
  class DisparityConfigStatics;

  class DisparityConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l,
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }

      virtual void clamp(DisparityConfig &config, const DisparityConfig &max, const DisparityConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const DisparityConfig &config1, const DisparityConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, DisparityConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const DisparityConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, DisparityConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const DisparityConfig &config) const = 0;
      virtual void getValue(const DisparityConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template <class T>
    class ParamDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level,
          std::string a_description, std::string a_edit_method, T DisparityConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T DisparityConfig::* field;

      virtual void clamp(DisparityConfig &config, const DisparityConfig &max, const DisparityConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;

        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const DisparityConfig &config1, const DisparityConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, DisparityConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const DisparityConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, DisparityConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const DisparityConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const DisparityConfig &config, boost::any &val) const
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, DisparityConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template<class T, class PT>
    class GroupDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, DisparityConfig &top) const
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T PT::* field;
      std::vector<DisparityConfig::AbstractGroupDescriptionConstPtr> groups;
    };

class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(DisparityConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("stereo_algorithm"==(*_i)->name){stereo_algorithm = boost::any_cast<int>(val);}
        if("prefilter_size"==(*_i)->name){prefilter_size = boost::any_cast<int>(val);}
        if("prefilter_cap"==(*_i)->name){prefilter_cap = boost::any_cast<int>(val);}
        if("correlation_window_size"==(*_i)->name){correlation_window_size = boost::any_cast<int>(val);}
        if("min_disparity"==(*_i)->name){min_disparity = boost::any_cast<int>(val);}
        if("disparity_range"==(*_i)->name){disparity_range = boost::any_cast<int>(val);}
        if("uniqueness_ratio"==(*_i)->name){uniqueness_ratio = boost::any_cast<double>(val);}
        if("texture_threshold"==(*_i)->name){texture_threshold = boost::any_cast<int>(val);}
        if("speckle_size"==(*_i)->name){speckle_size = boost::any_cast<int>(val);}
        if("speckle_range"==(*_i)->name){speckle_range = boost::any_cast<int>(val);}
        if("fullDP"==(*_i)->name){fullDP = boost::any_cast<bool>(val);}
        if("P1"==(*_i)->name){P1 = boost::any_cast<double>(val);}
        if("P2"==(*_i)->name){P2 = boost::any_cast<double>(val);}
        if("disp12MaxDiff"==(*_i)->name){disp12MaxDiff = boost::any_cast<int>(val);}
      }
    }

    int stereo_algorithm;
int prefilter_size;
int prefilter_cap;
int correlation_window_size;
int min_disparity;
int disparity_range;
double uniqueness_ratio;
int texture_threshold;
int speckle_size;
int speckle_range;
bool fullDP;
double P1;
double P2;
int disp12MaxDiff;

    bool state;
    std::string name;

    
}groups;



//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int stereo_algorithm;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int prefilter_size;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int prefilter_cap;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int correlation_window_size;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int min_disparity;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int disparity_range;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double uniqueness_ratio;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int texture_threshold;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int speckle_size;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int speckle_range;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool fullDP;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double P1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double P2;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int disp12MaxDiff;
//#line 228 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("DisparityConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }

    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }

    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const DisparityConfig &__max__ = __getMax__();
      const DisparityConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const DisparityConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }

    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const DisparityConfig &__getDefault__();
    static const DisparityConfig &__getMax__();
    static const DisparityConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();

  private:
    static const DisparityConfigStatics *__get_statics__();
  };

  template <> // Max and min are ignored for strings.
  inline void DisparityConfig::ParamDescription<std::string>::clamp(DisparityConfig &config, const DisparityConfig &max, const DisparityConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class DisparityConfigStatics
  {
    friend class DisparityConfig;

    DisparityConfigStatics()
    {
DisparityConfig::GroupDescription<DisparityConfig::DEFAULT, DisparityConfig> Default("Default", "", 0, 0, true, &DisparityConfig::groups);
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.stereo_algorithm = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.stereo_algorithm = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.stereo_algorithm = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("stereo_algorithm", "int", 0, "stereo algorithm", "{'enum_description': 'stereo algorithm', 'enum': [{'srcline': 11, 'description': 'Block Matching', 'srcfile': '/home/jetauto/jetauto_ws/src/third_party/image_pipeline/stereo_image_proc/cfg/Disparity.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'StereoBM'}, {'srcline': 12, 'description': 'SemiGlobal Block Matching', 'srcfile': '/home/jetauto/jetauto_ws/src/third_party/image_pipeline/stereo_image_proc/cfg/Disparity.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'StereoSGBM'}]}", &DisparityConfig::stereo_algorithm)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("stereo_algorithm", "int", 0, "stereo algorithm", "{'enum_description': 'stereo algorithm', 'enum': [{'srcline': 11, 'description': 'Block Matching', 'srcfile': '/home/jetauto/jetauto_ws/src/third_party/image_pipeline/stereo_image_proc/cfg/Disparity.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'StereoBM'}, {'srcline': 12, 'description': 'SemiGlobal Block Matching', 'srcfile': '/home/jetauto/jetauto_ws/src/third_party/image_pipeline/stereo_image_proc/cfg/Disparity.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'StereoSGBM'}]}", &DisparityConfig::stereo_algorithm)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.prefilter_size = 5;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.prefilter_size = 255;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.prefilter_size = 9;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("prefilter_size", "int", 0, "Normalization window size, pixels", "", &DisparityConfig::prefilter_size)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("prefilter_size", "int", 0, "Normalization window size, pixels", "", &DisparityConfig::prefilter_size)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.prefilter_cap = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.prefilter_cap = 63;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.prefilter_cap = 31;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("prefilter_cap", "int", 0, "Bound on normalized pixel values", "", &DisparityConfig::prefilter_cap)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("prefilter_cap", "int", 0, "Bound on normalized pixel values", "", &DisparityConfig::prefilter_cap)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.correlation_window_size = 5;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.correlation_window_size = 255;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.correlation_window_size = 15;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("correlation_window_size", "int", 0, "SAD correlation window width, pixels", "", &DisparityConfig::correlation_window_size)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("correlation_window_size", "int", 0, "SAD correlation window width, pixels", "", &DisparityConfig::correlation_window_size)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.min_disparity = -2048;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.min_disparity = 2048;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.min_disparity = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("min_disparity", "int", 0, "Disparity to begin search at, pixels (may be negative)", "", &DisparityConfig::min_disparity)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("min_disparity", "int", 0, "Disparity to begin search at, pixels (may be negative)", "", &DisparityConfig::min_disparity)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.disparity_range = 32;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.disparity_range = 4096;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.disparity_range = 64;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("disparity_range", "int", 0, "Number of disparities to search, pixels", "", &DisparityConfig::disparity_range)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("disparity_range", "int", 0, "Number of disparities to search, pixels", "", &DisparityConfig::disparity_range)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.uniqueness_ratio = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.uniqueness_ratio = 100.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.uniqueness_ratio = 15.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<double>("uniqueness_ratio", "double", 0, "Filter out if best match does not sufficiently exceed the next-best match", "", &DisparityConfig::uniqueness_ratio)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<double>("uniqueness_ratio", "double", 0, "Filter out if best match does not sufficiently exceed the next-best match", "", &DisparityConfig::uniqueness_ratio)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.texture_threshold = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.texture_threshold = 10000;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.texture_threshold = 10;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("texture_threshold", "int", 0, "Filter out if SAD window response does not exceed texture threshold", "", &DisparityConfig::texture_threshold)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("texture_threshold", "int", 0, "Filter out if SAD window response does not exceed texture threshold", "", &DisparityConfig::texture_threshold)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.speckle_size = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.speckle_size = 1000;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.speckle_size = 100;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("speckle_size", "int", 0, "Reject regions smaller than this size, pixels", "", &DisparityConfig::speckle_size)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("speckle_size", "int", 0, "Reject regions smaller than this size, pixels", "", &DisparityConfig::speckle_size)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.speckle_range = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.speckle_range = 31;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.speckle_range = 4;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("speckle_range", "int", 0, "Max allowed difference between detected disparities", "", &DisparityConfig::speckle_range)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("speckle_range", "int", 0, "Max allowed difference between detected disparities", "", &DisparityConfig::speckle_range)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.fullDP = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.fullDP = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.fullDP = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<bool>("fullDP", "bool", 0, "Run the full variant of the algorithm, only available in SGBM", "", &DisparityConfig::fullDP)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<bool>("fullDP", "bool", 0, "Run the full variant of the algorithm, only available in SGBM", "", &DisparityConfig::fullDP)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.P1 = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.P1 = 4000.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.P1 = 200.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<double>("P1", "double", 0, "The first parameter controlling the disparity smoothness, only available in SGBM", "", &DisparityConfig::P1)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<double>("P1", "double", 0, "The first parameter controlling the disparity smoothness, only available in SGBM", "", &DisparityConfig::P1)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.P2 = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.P2 = 4000.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.P2 = 400.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<double>("P2", "double", 0, "The second parameter controlling the disparity smoothness., only available in SGBM", "", &DisparityConfig::P2)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<double>("P2", "double", 0, "The second parameter controlling the disparity smoothness., only available in SGBM", "", &DisparityConfig::P2)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.disp12MaxDiff = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.disp12MaxDiff = 128;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.disp12MaxDiff = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("disp12MaxDiff", "int", 0, "Maximum allowed difference (in integer pixel units) in the left-right disparity check, only available in SGBM", "", &DisparityConfig::disp12MaxDiff)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(DisparityConfig::AbstractParamDescriptionConstPtr(new DisparityConfig::ParamDescription<int>("disp12MaxDiff", "int", 0, "Maximum allowed difference (in integer pixel units) in the left-right disparity check, only available in SGBM", "", &DisparityConfig::disp12MaxDiff)));
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(DisparityConfig::AbstractGroupDescriptionConstPtr(new DisparityConfig::GroupDescription<DisparityConfig::DEFAULT, DisparityConfig>(Default)));
//#line 366 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<DisparityConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__);
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__);
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__);
    }
    std::vector<DisparityConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<DisparityConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    DisparityConfig __max__;
    DisparityConfig __min__;
    DisparityConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const DisparityConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static DisparityConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &DisparityConfig::__getDescriptionMessage__()
  {
    return __get_statics__()->__description_message__;
  }

  inline const DisparityConfig &DisparityConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }

  inline const DisparityConfig &DisparityConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }

  inline const DisparityConfig &DisparityConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }

  inline const std::vector<DisparityConfig::AbstractParamDescriptionConstPtr> &DisparityConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<DisparityConfig::AbstractGroupDescriptionConstPtr> &DisparityConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const DisparityConfigStatics *DisparityConfig::__get_statics__()
  {
    const static DisparityConfigStatics *statics;

    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = DisparityConfigStatics::get_instance();

    return statics;
  }

//#line 11 "/home/jetauto/jetauto_ws/src/third_party/image_pipeline/stereo_image_proc/cfg/Disparity.cfg"
      const int Disparity_StereoBM = 0;
//#line 12 "/home/jetauto/jetauto_ws/src/third_party/image_pipeline/stereo_image_proc/cfg/Disparity.cfg"
      const int Disparity_StereoSGBM = 1;
}

#undef DYNAMIC_RECONFIGURE_FINAL

#endif // __DISPARITYRECONFIGURATOR_H__
